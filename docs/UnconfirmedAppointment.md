# Aryeo::UnconfirmedAppointment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the appointment. |  |
| **title** | **String** | The title of the appointment. | [optional] |
| **description** | **String** | The multi-line description of the appointment. | [optional] |
| **order** | [**Order**](Order.md) |  | [optional] |
| **users** | [**Array&lt;User&gt;**](User.md) | Users attached to the appointment. | [optional] |
| **preference_type** | **String** | The type of preferred scheduling information provided by a customer to aid in scheduling this appointment. | [optional] |
| **preferred_start_at** | **Time** | A preferred date and time (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME.  | [optional] |
| **preferred_start_at_day** | **Date** | A preferred date (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME_OF_DAY.  | [optional] |
| **preferred_start_at_time_of_day** | **String** | A preferred time of day for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME_OF_DAY.  | [optional] |
| **duration** | **Integer** | The estimated length of the appointment in minutes, if available. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::UnconfirmedAppointment.new(
  id: 00000000-0000-0000-0000-000000000000,
  title: Appointment title,
  description: Customer: John Doe
Order Details: Order #123,
  order: null,
  users: null,
  preference_type: TIME,
  preferred_start_at: 2021-06-30T20:30Z,
  preferred_start_at_day: Wed Jun 30 00:00:00 UTC 2021,
  preferred_start_at_time_of_day: AFTERNOON,
  duration: 60
)
```

