# Aryeo::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the address. UUID Version 4. |  |
| **latitude** | **Float** | The geographic latitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. |  |
| **longitude** | **Float** | The geographic longitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. |  |
| **street_number** | **String** | The street number portion of a location&#39;s address. In some areas, the street number may contain non-numeric characters. This field can also contain extensions and modifiers to the street number, such as \&quot;1/2\&quot; or \&quot;-B\&quot;. | [optional] |
| **street_name** | **String** | The street name portion of a location&#39;s address. | [optional] |
| **unit_number** | **String** | The number or portion of a larger building or complex. Examples are: \&quot;APT G\&quot;, \&quot;55\&quot;, etc. | [optional] |
| **postal_code** | **String** | The postal code portion of a location&#39;s address. | [optional] |
| **city** | **String** | The city of a location&#39;s address. | [optional] |
| **city_region** | **String** | A sub-section or area of a defined city. Examples would be SoHo in New York, NY, Ironbound in Newark, NJ or Inside the Beltway. | [optional] |
| **county_or_parish** | **String** | The County, Parish or other regional authority of the location. | [optional] |
| **state_or_province** | **String** | The ISO 3166-2 subdivision code for the state or province of the location. For example, “MA” for Massachusetts, United States. | [optional] |
| **state_or_province_region** | **String** | A sub-section or area of a defined state or province. Examples would be the Keys in FL or Hudson Valley in NY. | [optional] |
| **country** | **String** | The ISO 3166-1 country code for this for the country of the location. | [optional] |
| **country_region** | **String** | A sub-section or area of a defined country. Examples would be Napa Valley in the US, or the Amalfi Coast in Italy. | [optional] |
| **unparsed_address** | **String** | Unparsed text representation of the address.  | [optional] |
| **unparsed_address_part_one** | **String** | Unparsed text representation of the first part of the address, typically including the street number, street name, and unit number if applicable.   | [optional] |
| **unparsed_address_part_two** | **String** | Unparsed text representation of the second part of the address, typically including the city, state or province, and postal code.   | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Address.new(
  id: 00000000-0000-4000-8000-000000000000,
  latitude: 42.35157458574123,
  longitude: -71.05763741484657,
  street_number: 107,
  street_name: South St,
  unit_number: Unit 2F,
  postal_code: 02111,
  city: Boston,
  city_region: Leather District,
  county_or_parish: Suffolk County,
  state_or_province: MA,
  state_or_province_region: Cape Cod,
  country: US,
  country_region: Napa Valley,
  unparsed_address: 107 South St, Boston MA, 02111,
  unparsed_address_part_one: 107 South St, Unit 2F,
  unparsed_address_part_two: Boston, MA 02111
)
```

