# Aryeo::FloorPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the floor plan. |  |
| **thumbnail_url** | **String** | A URL for a thumbnail-sized version of the floor plan. |  |
| **large_url** | **String** | A URL for a large version of the floor plan. |  |
| **original_url** | **String** | A URL for the original, full-resolution version of the floor plan. Useful for downloading. |  |
| **title** | **String** | The title (or caption) of the floor plan. | [optional] |
| **index** | **Integer** | Index order position of the floor plan. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::FloorPlan.new(
  id: 1,
  thumbnail_url: https://via.placeholder.com/250x200.jpg,
  large_url: https://via.placeholder.com/1750x1400.jpg,
  original_url: https://via.placeholder.com/2500x2000.jpg,
  title: Downstairs floorplan,
  index: 1
)
```

