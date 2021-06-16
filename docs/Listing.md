# Aryeo::Listing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the listing. |  |
| **address** | [**PartialAddress**](PartialAddress.md) |  |  |
| **delivery_status** | **String** | Has this listing been delivered? |  |
| **thumbnail_url** | **String** | Thumbnail URL for the listing. | [optional] |
| **agent** | [**Group**](Group.md) |  | [optional] |
| **co_agent** | [**Group**](Group.md) |  | [optional] |
| **images** | [**Array&lt;Image&gt;**](Image.md) | images | [optional] |
| **videos** | [**Array&lt;Video&gt;**](Video.md) | videos | [optional] |
| **floor_plans** | [**Array&lt;FloorPlan&gt;**](FloorPlan.md) | floor_plans | [optional] |
| **property_websites** | [**PropertyWebsites**](PropertyWebsites.md) |  | [optional] |
| **interactive_content** | [**Array&lt;InteractiveContent&gt;**](InteractiveContent.md) | interactive_content | [optional] |
| **property_details** | [**PropertyDetails**](PropertyDetails.md) |  | [optional] |
| **downloads_enabled** | **Boolean** | Are downloads enabled for this listing? |  |
| **orders** | [**Array&lt;Order&gt;**](Order.md) | orders | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Listing.new(
  id: 00000000-0000-0000-0000-000000000000,
  address: null,
  delivery_status: delivered,
  thumbnail_url: https://via.placeholder.com/300.jpg,
  agent: null,
  co_agent: null,
  images: null,
  videos: null,
  floor_plans: null,
  property_websites: null,
  interactive_content: null,
  property_details: null,
  downloads_enabled: true,
  orders: null
)
```

