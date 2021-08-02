# Aryeo::FloorPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the floor plan. |  |
| **original_url** | **String** | A URL for the original, full-resolution version of the floor plan. Useful for downloading. |  |
| **large_url** | **String** | A URL for a large version of the floor plan. |  |
| **thumbnail_url** | **String** | A URL for a thumbnail-sized version of the floor plan. |  |
| **title** | **String** | The title (or caption) of the floor plan. | [optional] |
| **index** | **Integer** | Index order position of the floor plan. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::FloorPlan.new(
  id: 00000000-0000-0000-0000-000000000000,
  original_url: https://via.placeholder.com/2500x2000.jpg,
  large_url: https://via.placeholder.com/1750x1400.jpg,
  thumbnail_url: https://via.placeholder.com/250x200.jpg,
  title: Downstairs floorplan,
  index: 1
)
```

