# Aryeo::ListingsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_listings**](ListingsApi.md#get_listings) | **GET** /listings | Get the listings available to a group. |
| [**get_listings_id**](ListingsApi.md#get_listings_id) | **GET** /listings/{listing_id} | Get information about a listing. |


## get_listings

> <ListingCollection> get_listings(opts)

Get the listings available to a group.

Get the listings available to a group.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::ListingsApi.new
opts = {
  include: 'images,videos,orders', # String | Comma separated list of optional data to include in the response.
  filter_search: '123 Main St', # String | Return listings that have fields matching this term.
  filter_address: '123 Main St', # String | Return listings that have an address matching this term.
  filter_list_agent: 'John Doe', # String | Return listings that have a listing agent or co-listing agent matching this term.
  filter_status: 'DRAFT', # String | Return listings that have a certain status.
  filter_active: true, # Boolean | Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`). 
  filter_price_gte: 100000, # Float | Return listings where the price field is greater than or equal to this value.
  filter_price_lte: 4000000, # Float | Return listings where the price field is less than or equal to this value.
  filter_square_feet_gte: 1000, # Float | Return listings where the square feet field is greater than or equal to this value.
  filter_square_feet_lte: 5000, # Float | Return listings where the square feet field is less than or equal to this value.
  filter_bedrooms_gte: 2, # Integer | Return listings where the bedrooms field is greater than or equal to this value.
  filter_bedrooms_lte: 4, # Integer | Return listings where the bedrooms field is less than or equal to this value.
  filter_bathrooms_gte: 2.5, # Float | Return listings where the bathrooms field is greater than or equal to this value.
  filter_bathrooms_lte: 5, # Float | Return listings where the bathrooms field is less than or equal to this value.
  sort: '-created_at', # String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`.
  per_page: '25', # String | The number of items per page. Defaults to 25.
  page: '2' # String | The requested page. Defaults to 1.
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

> <Array(<ListingCollection>, Integer, Hash)> get_listings_with_http_info(opts)

```ruby
begin
  # Get the listings available to a group.
  data, status_code, headers = api_instance.get_listings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingCollection>
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |
| **filter_search** | **String** | Return listings that have fields matching this term. | [optional] |
| **filter_address** | **String** | Return listings that have an address matching this term. | [optional] |
| **filter_list_agent** | **String** | Return listings that have a listing agent or co-listing agent matching this term. | [optional] |
| **filter_status** | **String** | Return listings that have a certain status. | [optional] |
| **filter_active** | **Boolean** | Set as true to return listings that have an active status (e.g. active statuses include &#x60;COMING_SOON&#x60;, &#x60;FOR_SALE&#x60;, &#x60;FOR_LEASE&#x60;, &#x60;PENDING_SALE&#x60;, &#x60;PENDING_LEASE&#x60;, &#x60;SOLD&#x60;, &#x60;LEASED&#x60;).  | [optional] |
| **filter_price_gte** | **Float** | Return listings where the price field is greater than or equal to this value. | [optional] |
| **filter_price_lte** | **Float** | Return listings where the price field is less than or equal to this value. | [optional] |
| **filter_square_feet_gte** | **Float** | Return listings where the square feet field is greater than or equal to this value. | [optional] |
| **filter_square_feet_lte** | **Float** | Return listings where the square feet field is less than or equal to this value. | [optional] |
| **filter_bedrooms_gte** | **Integer** | Return listings where the bedrooms field is greater than or equal to this value. | [optional] |
| **filter_bedrooms_lte** | **Integer** | Return listings where the bedrooms field is less than or equal to this value. | [optional] |
| **filter_bathrooms_gte** | **Float** | Return listings where the bathrooms field is greater than or equal to this value. | [optional] |
| **filter_bathrooms_lte** | **Float** | Return listings where the bathrooms field is less than or equal to this value. | [optional] |
| **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;. | [optional] |
| **per_page** | **String** | The number of items per page. Defaults to 25. | [optional] |
| **page** | **String** | The requested page. Defaults to 1. | [optional] |

### Return type

[**ListingCollection**](ListingCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_id

> <ListingResource> get_listings_id(listing_id, opts)

Get information about a listing.

Get information about a listing.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization: Token
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::ListingsApi.new
listing_id = TODO # String | The ID of a listing. UUID Version 4.
opts = {
  include: 'images,videos,orders' # String | Comma separated list of optional data to include in the response.
}

begin
  # Get information about a listing.
  result = api_instance.get_listings_id(listing_id, opts)
  p result
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_id: #{e}"
end
```

#### Using the get_listings_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingResource>, Integer, Hash)> get_listings_id_with_http_info(listing_id, opts)

```ruby
begin
  # Get information about a listing.
  data, status_code, headers = api_instance.get_listings_id_with_http_info(listing_id, opts)
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
| **listing_id** | [**String**](.md) | The ID of a listing. UUID Version 4. |  |
| **include** | **String** | Comma separated list of optional data to include in the response. | [optional] |

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

