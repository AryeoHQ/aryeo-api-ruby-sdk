# Aryeo::VendorsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vendors**](VendorsApi.md#get_vendors) | **GET** /vendors | Get vendors available to a group. |
| [**get_vendors_search**](VendorsApi.md#get_vendors_search) | **GET** /vendors/search | Get vendors that can be added to the group&#39;s vendor list. |


## get_vendors

> <GroupCollection> get_vendors

Get vendors available to a group.

Get vendors available to a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::VendorsApi.new

begin
  # Get vendors available to a group.
  result = api_instance.get_vendors
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors: #{e}"
end
```

#### Using the get_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCollection>, Integer, Hash)> get_vendors_with_http_info

```ruby
begin
  # Get vendors available to a group.
  data, status_code, headers = api_instance.get_vendors_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendors_search

> <GroupCollection> get_vendors_search(opts)

Get vendors that can be added to the group's vendor list.

Get vendors that can be added to the group's vendor list, excluding those already available to a group. 

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::VendorsApi.new
opts = {
  query: 'Demo Photography Company', # String | A search query.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2' # String | The requested page. Defaults to 1.
}

begin
  # Get vendors that can be added to the group's vendor list.
  result = api_instance.get_vendors_search(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_search: #{e}"
end
```

#### Using the get_vendors_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCollection>, Integer, Hash)> get_vendors_search_with_http_info(opts)

```ruby
begin
  # Get vendors that can be added to the group's vendor list.
  data, status_code, headers = api_instance.get_vendors_search_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | A search query. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

