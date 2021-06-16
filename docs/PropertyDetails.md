# Aryeo::PropertyDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **Integer** | The price of the property in dollars. | [optional] |
| **mls_number** | **String** | A number assigned to a real-estate listing for the purposes of information sharing. | [optional] |
| **bedrooms** | **Integer** | Number of bedrooms. | [optional] |
| **bathrooms** | **Float** | Number of bathrooms. Represented as a number in order to support half-baths. | [optional] |
| **square_feet** | **Float** | Total number of square feet. | [optional] |
| **lot_acres** | **Float** | Total acres. | [optional] |
| **parking_spots** | **Integer** | Number of parking spaces. | [optional] |
| **year_built** | **Integer** | Year the property was built. | [optional] |
| **property_type** | **String** | Type of property. | [optional] |
| **description** | **String** | Property description. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PropertyDetails.new(
  price: 250000,
  mls_number: 8137899,
  bedrooms: 4,
  bathrooms: 3.5,
  square_feet: 2511,
  lot_acres: 0.47,
  parking_spots: 3,
  year_built: 1960,
  property_type: Single Family,
  description: There are technically no designated parking spots; however, the driveway, on the back of the house, can easily park 3 standard-sized vehicles.
)
```

