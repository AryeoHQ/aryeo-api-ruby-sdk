# Aryeo::OrdersApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_orders**](OrdersApi.md#get_orders) | **GET** /orders | Get orders available to a group. |
| [**post_orders**](OrdersApi.md#post_orders) | **POST** /orders | Create an order. |


## get_orders

> <OrderCollection> get_orders

Get orders available to a group.

Get orders of a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new

begin
  # Get orders available to a group.
  result = api_instance.get_orders
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderCollection>, Integer, Hash)> get_orders_with_http_info

```ruby
begin
  # Get orders available to a group.
  data, status_code, headers = api_instance.get_orders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_orders

> <OrderResource> post_orders(opts)

Create an order.

Create an order.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new
opts = {
  order_post_payload: Aryeo::OrderPostPayload.new # OrderPostPayload | 
}

begin
  # Create an order.
  result = api_instance.post_orders(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->post_orders: #{e}"
end
```

#### Using the post_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResource>, Integer, Hash)> post_orders_with_http_info(opts)

```ruby
begin
  # Create an order.
  data, status_code, headers = api_instance.post_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResource>
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->post_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_post_payload** | [**OrderPostPayload**](OrderPostPayload.md) |  | [optional] |

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

