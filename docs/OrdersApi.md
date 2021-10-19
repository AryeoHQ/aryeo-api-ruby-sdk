# Aryeo::OrdersApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_orders**](OrdersApi.md#get_orders) | **GET** /orders | List all orders. |
| [**get_orders_id**](OrdersApi.md#get_orders_id) | **GET** /orders/{order_id} | Retrieve an order. |
| [**get_products**](OrdersApi.md#get_products) | **GET** /products | List all products. |
| [**post_orders**](OrdersApi.md#post_orders) | **POST** /orders | Create an order. |


## get_orders

> <OrderCollection> get_orders(opts)

List all orders.

Lists all orders of a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new
opts = {
  sort: '-created_at', # String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2' # String | The requested page. Defaults to 1.
}

begin
  # List all orders.
  result = api_instance.get_orders(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderCollection>, Integer, Hash)> get_orders_with_http_info(opts)

```ruby
begin
  # List all orders.
  data, status_code, headers = api_instance.get_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders_id

> <OrderResource> get_orders_id(order_id, opts)

Retrieve an order.

Retrieves the details of an order with the given ID.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new
order_id = TODO # String | The ID of an order. UUID Version 4.
opts = {
  include: 'items,appointments,unconfirmed_appointments' # String | Comma separated list of optional data to include in the response.
}

begin
  # Retrieve an order.
  result = api_instance.get_orders_id(order_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders_id: #{e}"
end
```

#### Using the get_orders_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResource>, Integer, Hash)> get_orders_id_with_http_info(order_id, opts)

```ruby
begin
  # Retrieve an order.
  data, status_code, headers = api_instance.get_orders_id_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResource>
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_orders_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | [**String**](.md) | The ID of an order. UUID Version 4. |  |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <ProductCollection> get_products(opts)

List all products.

List all products of a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new
opts = {
  sort: '-created_at', # String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2', # String | The requested page. Defaults to 1.
  filter_search: 'Photography', # String | Return products that have fields matching this term.
  filter_include_inactive: true, # Boolean | Include inactive products (in addition to active products) when returning products.
  filter_category_ids: ['00000000-0000-4000-8000-000000000000'], # Array<String> | Return products in the given categories.
  filter_type: 'MAIN' # String | Return products matching the given type. Allowed values are: MAIN, ADDON.
}

begin
  # List all products.
  result = api_instance.get_products(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollection>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  # List all products.
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling OrdersApi->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;title&#x60;. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |
| **filter_search** | **String** | Return products that have fields matching this term. | [optional] |
| **filter_include_inactive** | **Boolean** | Include inactive products (in addition to active products) when returning products. | [optional] |
| **filter_category_ids** | [**Array&lt;String&gt;**](String.md) | Return products in the given categories. | [optional] |
| **filter_type** | **String** | Return products matching the given type. Allowed values are: MAIN, ADDON. | [optional] |

### Return type

[**ProductCollection**](ProductCollection.md)

### Authorization

[Token](../README.md#Token)

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
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::OrdersApi.new
opts = {
  order_post_payload: Aryeo::OrderPostPayload.new # OrderPostPayload | OrderPostPayload
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
| **order_post_payload** | [**OrderPostPayload**](OrderPostPayload.md) | OrderPostPayload | [optional] |

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

