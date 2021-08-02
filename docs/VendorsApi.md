# Aryeo::VendorsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vendors**](VendorsApi.md#get_vendors) | **GET** /vendors | Get vendors available to a group. |
| [**get_vendors_id**](VendorsApi.md#get_vendors_id) | **GET** /vendors/{vendor_id} | Get vendors available to a group. |


## get_vendors

> <GroupCollection> get_vendors(opts)

Get vendors available to a group.

Get vendors available to a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::VendorsApi.new
opts = {
  include: 'users' # String | Comma separated list of optional data to include in the response.
}

begin
  # Get vendors available to a group.
  result = api_instance.get_vendors(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors: #{e}"
end
```

#### Using the get_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCollection>, Integer, Hash)> get_vendors_with_http_info(opts)

```ruby
begin
  # Get vendors available to a group.
  data, status_code, headers = api_instance.get_vendors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendors_id

> <GroupResource> get_vendors_id(vendor_id, opts)

Get vendors available to a group.

Get information about a vendor.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::VendorsApi.new
vendor_id = TODO # String | ID of the group that is associated as a vendor.
opts = {
  include: 'default_order_form' # String | Comma separated list of optional data to include in the response.
}

begin
  # Get vendors available to a group.
  result = api_instance.get_vendors_id(vendor_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_id: #{e}"
end
```

#### Using the get_vendors_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupResource>, Integer, Hash)> get_vendors_id_with_http_info(vendor_id, opts)

```ruby
begin
  # Get vendors available to a group.
  data, status_code, headers = api_instance.get_vendors_id_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupResource>
rescue Aryeo::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | [**String**](.md) | ID of the group that is associated as a vendor. |  |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

