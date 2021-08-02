# Aryeo::Listing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the listing. |  |
| **address** | [**Address**](Address.md) |  |  |
| **mls_number** | **String** | The identifier for a listing on its local MLS.  | [optional] |
| **type** | **String** | General type of the listing, primarily categorizing its use case. Examples include residential and commercial.  | [optional] |
| **sub_type** | **String** | Further specifies the listing type. Examples include family residence and condominium. | [optional] |
| **status** | **String** | Local, regional, or otherwise custom status for the listing used by the parties involved in the listing transaction. While variable, these statuses are typically mapped to the listing&#39;s standard status. | [optional] |
| **standard_status** | **String** | The status of the listing as it reflects the state of the contract between the listing agent and seller or an agreement with a buyer, including Active, Active Under Contract, Canceled, Closed, Expired, Pending, and Withdrawn. | [optional] |
| **description** | **String** | Description of the selling points of the building and/or land for sale.  | [optional] |
| **lot** | [**ListingLot**](ListingLot.md) |  | [optional] |
| **building** | [**ListingBuilding**](ListingBuilding.md) |  | [optional] |
| **price** | [**ListingPrice**](ListingPrice.md) |  | [optional] |
| **list_agent** | [**Group**](Group.md) |  | [optional] |
| **co_list_agent** | [**Group**](Group.md) |  | [optional] |
| **images** | [**Array&lt;Image&gt;**](Image.md) | images | [optional] |
| **videos** | [**Array&lt;Video&gt;**](Video.md) | videos | [optional] |
| **floor_plans** | [**Array&lt;FloorPlan&gt;**](FloorPlan.md) | floor_plans | [optional] |
| **interactive_content** | [**Array&lt;InteractiveContent&gt;**](InteractiveContent.md) | interactive_content | [optional] |
| **property_website** | [**PropertyWebsite**](PropertyWebsite.md) |  | [optional] |
| **orders** | [**Array&lt;Order&gt;**](Order.md) | orders | [optional] |
| **downloads_enabled** | **Boolean** | Are downloads enabled for this listing? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Listing.new(
  id: 00000000-0000-0000-0000-000000000000,
  address: null,
  mls_number: 1850209,
  type: RESIDENTIAL,
  sub_type: SINGLE_FAMILY_RESIDENCE,
  status: COMING_SOON,
  standard_status: COMING_SOON,
  description: There are technically no designated parking spots; however, the driveway, on the back of the house, can easily park 3 standard-sized vehicles.,
  lot: null,
  building: null,
  price: null,
  list_agent: null,
  co_list_agent: null,
  images: null,
  videos: null,
  floor_plans: null,
  interactive_content: null,
  property_website: null,
  orders: null,
  downloads_enabled: true
)
```

