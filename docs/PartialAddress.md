# Aryeo::PartialAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of address. |  |
| **full_address** | **String** | The full address string containing address_1 and address_2. | [optional] |
| **formatted_address_1** | **String** | A formatted address string containing the street. |  |
| **formatted_address_2** | **String** | A formatted address string containing the city, state, and zipcode. |  |
| **latitude** | **Float** | Latitude of the address. |  |
| **longitude** | **Float** | Longitude of the address. |  |
| **place_id** | **String** | ID of place. | [optional] |
| **address_line_1** | **String** | Address line 1 | [optional] |
| **address_line_2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **postal_code** | **String** | Postal Code | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PartialAddress.new(
  id: 1,
  full_address: 107 South St,
  formatted_address_1: 107 South St,
  formatted_address_2: Boston, MA 02111, US,
  latitude: 42.3537627,
  longitude: -71.0530544,
  place_id: 000000000000000000000000000,
  address_line_1: 107 South St,
  address_line_2: Unit #1,
  city: Boston,
  state: MA,
  postal_code: 02111
)
```

