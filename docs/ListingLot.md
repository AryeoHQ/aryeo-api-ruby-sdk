# Aryeo::ListingLot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size_acres** | **Float** | Total area of the lot of a listing in acres.  | [optional] |
| **open_parking_spaces** | **Float** | Number of parking spaces. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ListingLot.new(
  size_acres: 0.47,
  open_parking_spaces: 3
)
```

