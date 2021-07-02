# Aryeo::ListingsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listings**](ListingsApi.md#get_listings) | **GET** /listings | Get the listings available to a group. |
| [**get_listings_id**](ListingsApi.md#get_listings_id) | **GET** /listings/{uuid} | Get information about a listing. |


## get_listings

> <PartialListingCollection> get_listings(opts)

Get the listings available to a group.

Get the listings available to a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::ListingsApi.new
opts = {
  query: 'thoroughbred trail', # String | A search query.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2', # String | The requested page. Defaults to 1.
  status: 'off_market', # String | The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
  price: 100000, # Integer | The price value and greater will be returned.
  bathrooms: 3.5, # Float | Number of bathrooms minimum.
  bedrooms: 4 # Integer | Number of bedrooms minimum.
}

begin
  # Get the listings available to a group.
  result = api_instance.get_listings(opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings: #{e}"
end
```

#### Using the get_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialListingCollection>, Integer, Hash)> get_listings_with_http_info(opts)

```ruby
begin
  # Get the listings available to a group.
  data, status_code, headers = api_instance.get_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialListingCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | A search query. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |
| **status** | **String** | The status you want to scope down to, example sold,  coming_soon,  for_sale, sold | [optional] |
| **price** | **Integer** | The price value and greater will be returned. | [optional] |
| **bathrooms** | **Float** | Number of bathrooms minimum. | [optional] |
| **bedrooms** | **Integer** | Number of bedrooms minimum. | [optional] |

### Return type

[**PartialListingCollection**](PartialListingCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_id

> <ListingResource> get_listings_id(uuid)

Get information about a listing.

Get information about a listing.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::ListingsApi.new
uuid = TODO # String | The UUID of a listing.

begin
  # Get information about a listing.
  result = api_instance.get_listings_id(uuid)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_id: #{e}"
end
```

#### Using the get_listings_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingResource>, Integer, Hash)> get_listings_id_with_http_info(uuid)

```ruby
begin
  # Get information about a listing.
  data, status_code, headers = api_instance.get_listings_id_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingResource>
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | [**String**](.md) | The UUID of a listing. |  |

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

