# Aryeo::ListingBuilding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bedrooms** | **Integer** | Total number of bedrooms. | [optional] |
| **bathrooms** | **Float** | Sum of the number of bathrooms. Represented as a number in order to support half-baths. | [optional] |
| **square_feet** | **Float** | Total number of square feet. | [optional] |
| **year_built** | **Integer** | Year the property was built. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ListingBuilding.new(
  bedrooms: 4,
  bathrooms: 3.5,
  square_feet: 2511,
  year_built: 1960
)
```

