# Aryeo::MarketingMaterialsApi

All URIs are relative to *https://api.aryeo.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**put_marketing_materials_uuid_publish**](MarketingMaterialsApi.md#put_marketing_materials_uuid_publish) | **PUT** /marketing-materials/{uuid}/publish | Publish a marketing material. |


## put_marketing_materials_uuid_publish

> put_marketing_materials_uuid_publish(uuid, opts)

Publish a marketing material.

Publish a marketing material.

### Examples

```ruby
require 'time'
require 'aryeo'
# setup authorization
Aryeo.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Aryeo::MarketingMaterialsApi.new
uuid = TODO # String | UUID of the marketing material record.
opts = {
  marketing_material_publish_payload: Aryeo::MarketingMaterialPublishPayload.new # MarketingMaterialPublishPayload | 
}

begin
  # Publish a marketing material.
  api_instance.put_marketing_materials_uuid_publish(uuid, opts)
rescue Aryeo::ApiError => e
  puts "Error when calling MarketingMaterialsApi->put_marketing_materials_uuid_publish: #{e}"
end
```

#### Using the put_marketing_materials_uuid_publish_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_marketing_materials_uuid_publish_with_http_info(uuid, opts)

```ruby
begin
  # Publish a marketing material.
  data, status_code, headers = api_instance.put_marketing_materials_uuid_publish_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Aryeo::ApiError => e
  puts "Error when calling MarketingMaterialsApi->put_marketing_materials_uuid_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | [**String**](.md) | UUID of the marketing material record. |  |
| **marketing_material_publish_payload** | [**MarketingMaterialPublishPayload**](MarketingMaterialPublishPayload.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

