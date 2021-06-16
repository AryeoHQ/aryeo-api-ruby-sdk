# Aryeo::PartialListing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the listing. |  |
| **address** | [**PartialAddress**](PartialAddress.md) |  |  |
| **delivery_status** | **String** | Has the listing been delivered? |  |
| **thumbnail_url** | **String** | Thumbnail URL for the listing. | [optional] |
| **price** | **Integer** | The price of the property in dollars. | [optional] |
| **branded_url** | **String** | URL for branded property website. | [optional] |
| **square_feet** | **Float** | Total number of square feet. | [optional] |
| **bedrooms** | **Integer** | Number of bedrooms. | [optional] |
| **bathrooms** | **Float** | Number of bathrooms. | [optional] |
| **downloads_enabled** | **Boolean** | Are downloads enabled for this listing? |  |
| **status** | **String** | Sales status for the listing. | [optional] |
| **property_details** | [**PropertyDetails**](PropertyDetails.md) |  | [optional] |
| **agent** | [**PartialGroup**](PartialGroup.md) |  | [optional] |
| **co_agent** | [**PartialGroup**](PartialGroup.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PartialListing.new(
  id: 00000000-0000-0000-0000-000000000000,
  address: null,
  delivery_status: delivered,
  thumbnail_url: https://via.placeholder.com/300.jpg,
  price: 250000,
  branded_url: https://www.aryeo.com/v2/1200-noble-way-flower-mound-1760/branded,
  square_feet: 2511,
  bedrooms: 4,
  bathrooms: 3.5,
  downloads_enabled: true,
  status: For Sale,
  property_details: null,
  agent: null,
  co_agent: null
)
```

