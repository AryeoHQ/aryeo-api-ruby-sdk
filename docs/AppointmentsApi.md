# Aryeo::AppointmentsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_appointments**](AppointmentsApi.md#get_appointments) | **GET** /appointments | List all appointments. |
| [**get_available_dates**](AppointmentsApi.md#get_available_dates) | **GET** /scheduling/available-dates | Fetch available days for a user or group |
| [**get_available_timeslots**](AppointmentsApi.md#get_available_timeslots) | **GET** /scheduling/available-timeslots | Fetch available timeslots for a user or group |
| [**get_unconfirmed_appointments**](AppointmentsApi.md#get_unconfirmed_appointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments. |
| [**get_unconfirmed_appointments_id**](AppointmentsApi.md#get_unconfirmed_appointments_id) | **GET** /unconfirmed-appointments/{unconfirmed_appointment_id} | Retrieve an unconfirmed appointment. |
| [**put_appointments_appointment_id_cancel**](AppointmentsApi.md#put_appointments_appointment_id_cancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment. |
| [**put_appointments_appointment_id_reschedule**](AppointmentsApi.md#put_appointments_appointment_id_reschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment. |


## get_appointments

> <AppointmentCollection> get_appointments(opts)

List all appointments.

List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
opts = {
  include: 'order,users', # String | Comma separated list of optional data to include in the response.
  filter_tense: 'PAST', # String | Return appointments that are upcoming or in the past.
  filter_start_at_gte: Time.parse('2021-01-01T13:00Z'), # Time | Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
  filter_start_at_lte: Time.parse('2021-01-02T13:00Z'), # Time | Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
  filter_user_ids: ['00000000-0000-4000-8000-000000000000'], # Array<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
  sort: '-created_at', # String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2' # String | The requested page. Defaults to 1.
}

begin
  # List all appointments.
  result = api_instance.get_appointments(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_appointments: #{e}"
end
```

#### Using the get_appointments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppointmentCollection>, Integer, Hash)> get_appointments_with_http_info(opts)

```ruby
begin
  # List all appointments.
  data, status_code, headers = api_instance.get_appointments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppointmentCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_appointments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |
| **filter_tense** | **String** | Return appointments that are upcoming or in the past. | [optional] |
| **filter_start_at_gte** | **Time** | Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date. | [optional] |
| **filter_start_at_lte** | **Time** | Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date. | [optional] |
| **filter_user_ids** | [**Array&lt;String&gt;**](String.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] |
| **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |

### Return type

[**AppointmentCollection**](AppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_available_dates

> <CalendarDayCollection> get_available_dates(opts)

Fetch available days for a user or group

Fetch available calendar days for scheduling or rescheduling an appointment. Availability can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through weeks, months, etc.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
opts = {
  filter_user_ids: ['00000000-0000-4000-8000-000000000000'], # Array<String> | The IDs of users whose availability will be retrieved. UUID Version 4.
  filter_appointment_id: '00000000-0000-4000-8000-000000000000', # String | Appointment ID used to fetch availability for an existing order
  filter_start_at: Time.parse('2021-01-01T13:00Z'), # Time | Returns availability after start_at
  filter_end_at: Time.parse('2021-01-02T13:00Z'), # Time | Returns availability before end_at
  filter_timeframe: ['MONTH'], # Array<String> | Returns availability for a specific timeframe. Used instead of start_at & end_at
  duration: 60, # Integer | Duration of the event to schedule. Required if appointment_id isn't specified
  interval: 15, # Integer | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified
  timezone: '2', # String | Timezone of the client. Localizes the available days
  page: 1, # Integer | The requested page of results
  per_page: 5 # Integer | The number of results per page. Only applies when using a date range
}

begin
  # Fetch available days for a user or group
  result = api_instance.get_available_dates(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_available_dates: #{e}"
end
```

#### Using the get_available_dates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalendarDayCollection>, Integer, Hash)> get_available_dates_with_http_info(opts)

```ruby
begin
  # Fetch available days for a user or group
  data, status_code, headers = api_instance.get_available_dates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalendarDayCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_available_dates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_user_ids** | [**Array&lt;String&gt;**](String.md) | The IDs of users whose availability will be retrieved. UUID Version 4. | [optional] |
| **filter_appointment_id** | **String** | Appointment ID used to fetch availability for an existing order | [optional] |
| **filter_start_at** | **Time** | Returns availability after start_at | [optional] |
| **filter_end_at** | **Time** | Returns availability before end_at | [optional] |
| **filter_timeframe** | [**Array&lt;String&gt;**](String.md) | Returns availability for a specific timeframe. Used instead of start_at &amp; end_at | [optional] |
| **duration** | **Integer** | Duration of the event to schedule. Required if appointment_id isn&#39;t specified | [optional] |
| **interval** | **Integer** | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn&#39;t specified | [optional] |
| **timezone** | **String** | Timezone of the client. Localizes the available days | [optional] |
| **page** | **Integer** | The requested page of results | [optional] |
| **per_page** | **Integer** | The number of results per page. Only applies when using a date range | [optional] |

### Return type

[**CalendarDayCollection**](CalendarDayCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_available_timeslots

> <TimeslotCollection> get_available_timeslots(opts)

Fetch available timeslots for a user or group

Fetch available timeslots for scheduling or rescheduling an appointment. Timeslots can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through days or weeks.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
opts = {
  filter_user_ids: ['00000000-0000-4000-8000-000000000000'], # Array<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
  filter_appointment_id: '00000000-0000-4000-8000-000000000000', # String | Appointment ID used to fetch availability for an existing order
  filter_start_at: Time.parse('2021-01-01T13:00Z'), # Time | Returns availability after start_at
  filter_end_at: Time.parse('2021-01-02T13:00Z'), # Time | Returns availability before end_at
  filter_timeframe: ['MONTH'], # Array<String> | Returns availability for a specific timeframe. Used instead of start_at & end_at
  duration: 60, # Integer | Duration of the event to schedule. Required if appointment_id isn't specified
  interval: 25, # Integer | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified
  page: 1, # Integer | The requested page of results
  per_page: 5 # Integer | The number of results per page. Only applies when using a date range
}

begin
  # Fetch available timeslots for a user or group
  result = api_instance.get_available_timeslots(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_available_timeslots: #{e}"
end
```

#### Using the get_available_timeslots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimeslotCollection>, Integer, Hash)> get_available_timeslots_with_http_info(opts)

```ruby
begin
  # Fetch available timeslots for a user or group
  data, status_code, headers = api_instance.get_available_timeslots_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimeslotCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_available_timeslots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_user_ids** | [**Array&lt;String&gt;**](String.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] |
| **filter_appointment_id** | **String** | Appointment ID used to fetch availability for an existing order | [optional] |
| **filter_start_at** | **Time** | Returns availability after start_at | [optional] |
| **filter_end_at** | **Time** | Returns availability before end_at | [optional] |
| **filter_timeframe** | [**Array&lt;String&gt;**](String.md) | Returns availability for a specific timeframe. Used instead of start_at &amp; end_at | [optional] |
| **duration** | **Integer** | Duration of the event to schedule. Required if appointment_id isn&#39;t specified | [optional] |
| **interval** | **Integer** | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn&#39;t specified | [optional] |
| **page** | **Integer** | The requested page of results | [optional] |
| **per_page** | **Integer** | The number of results per page. Only applies when using a date range | [optional] |

### Return type

[**TimeslotCollection**](TimeslotCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unconfirmed_appointments

> <UnconfirmedAppointmentCollection> get_unconfirmed_appointments(opts)

List all unconfirmed appointments.

List all unconfirmed appointments. These are appointments that have not been scheduled.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
opts = {
  include: 'order,users', # String | Comma separated list of optional data to include in the response.
  filter_user_ids: ['00000000-0000-4000-8000-000000000000'], # Array<String> | The IDs of users whose appointments will be retrieved. UUID Version 4.
  sort: '-created_at', # String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2' # String | The requested page. Defaults to 1.
}

begin
  # List all unconfirmed appointments.
  result = api_instance.get_unconfirmed_appointments(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_unconfirmed_appointments: #{e}"
end
```

#### Using the get_unconfirmed_appointments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnconfirmedAppointmentCollection>, Integer, Hash)> get_unconfirmed_appointments_with_http_info(opts)

```ruby
begin
  # List all unconfirmed appointments.
  data, status_code, headers = api_instance.get_unconfirmed_appointments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnconfirmedAppointmentCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_unconfirmed_appointments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |
| **filter_user_ids** | [**Array&lt;String&gt;**](String.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] |
| **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |

### Return type

[**UnconfirmedAppointmentCollection**](UnconfirmedAppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unconfirmed_appointments_id

> <UnconfirmedAppointmentResource> get_unconfirmed_appointments_id(unconfirmed_appointment_id, opts)

Retrieve an unconfirmed appointment.

Retrieves the details of an unconfirmed appointment with the given ID.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
unconfirmed_appointment_id = TODO # String | The ID of an appointment.
opts = {
  include: 'order,users' # String | Comma separated list of optional data to include in the response.
}

begin
  # Retrieve an unconfirmed appointment.
  result = api_instance.get_unconfirmed_appointments_id(unconfirmed_appointment_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_unconfirmed_appointments_id: #{e}"
end
```

#### Using the get_unconfirmed_appointments_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnconfirmedAppointmentResource>, Integer, Hash)> get_unconfirmed_appointments_id_with_http_info(unconfirmed_appointment_id, opts)

```ruby
begin
  # Retrieve an unconfirmed appointment.
  data, status_code, headers = api_instance.get_unconfirmed_appointments_id_with_http_info(unconfirmed_appointment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnconfirmedAppointmentResource>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->get_unconfirmed_appointments_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unconfirmed_appointment_id** | [**String**](.md) | The ID of an appointment. |  |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |

### Return type

[**UnconfirmedAppointmentResource**](UnconfirmedAppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_appointments_appointment_id_cancel

> <AppointmentResource> put_appointments_appointment_id_cancel(appointment_id, opts)

Cancel an appointment.

Cancel an appointment. The appointments order's customer can be optionally notified of this change.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
appointment_id = TODO # String | The ID of an appointment.
opts = {
  appointment_cancel_put_payload: Aryeo::AppointmentCancelPutPayload.new # AppointmentCancelPutPayload | 
}

begin
  # Cancel an appointment.
  result = api_instance.put_appointments_appointment_id_cancel(appointment_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->put_appointments_appointment_id_cancel: #{e}"
end
```

#### Using the put_appointments_appointment_id_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppointmentResource>, Integer, Hash)> put_appointments_appointment_id_cancel_with_http_info(appointment_id, opts)

```ruby
begin
  # Cancel an appointment.
  data, status_code, headers = api_instance.put_appointments_appointment_id_cancel_with_http_info(appointment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppointmentResource>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->put_appointments_appointment_id_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appointment_id** | [**String**](.md) | The ID of an appointment. |  |
| **appointment_cancel_put_payload** | [**AppointmentCancelPutPayload**](AppointmentCancelPutPayload.md) |  | [optional] |

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_appointments_appointment_id_reschedule

> <AppointmentResource> put_appointments_appointment_id_reschedule(appointment_id, opts)

Reschedule an appointment.

Reschedule an appointment. The appointments order's customer can be optionally notified of this change.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::AppointmentsApi.new
appointment_id = TODO # String | The ID of an appointment.
opts = {
  appointment_reschedule_put_payload: Aryeo::AppointmentReschedulePutPayload.new({start_at: Time.parse('2021-06-30T20:30Z'), end_at: Time.parse('2021-06-30T21:30Z')}) # AppointmentReschedulePutPayload | 
}

begin
  # Reschedule an appointment.
  result = api_instance.put_appointments_appointment_id_reschedule(appointment_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->put_appointments_appointment_id_reschedule: #{e}"
end
```

#### Using the put_appointments_appointment_id_reschedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppointmentResource>, Integer, Hash)> put_appointments_appointment_id_reschedule_with_http_info(appointment_id, opts)

```ruby
begin
  # Reschedule an appointment.
  data, status_code, headers = api_instance.put_appointments_appointment_id_reschedule_with_http_info(appointment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppointmentResource>
rescue Aryeo::ApiError => e
  puts "Error when calling AppointmentsApi->put_appointments_appointment_id_reschedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appointment_id** | [**String**](.md) | The ID of an appointment. |  |
| **appointment_reschedule_put_payload** | [**AppointmentReschedulePutPayload**](AppointmentReschedulePutPayload.md) |  | [optional] |

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

