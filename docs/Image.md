# Aryeo::Image

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the image. |  |
| **thumbnail_url** | **String** | A URL for a thumbnail-sized version of the image. |  |
| **large_url** | **String** | A URL for a large version of the image. |  |
| **original_url** | **String** | A URL for the original, full-resolution version of the image. Useful for downloading. |  |
| **index** | **Integer** | The order in which the image should be displayed amongst other related images. | [optional] |
| **caption** | **String** | A brief explanation of the image. | [optional] |
| **display_in_gallery** | **Boolean** | Should the image be displayed in a gallery? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Image.new(
  id: 00000000-0000-0000-0000-000000000000,
  thumbnail_url: https://via.placeholder.com/250x200.jpg,
  large_url: https://via.placeholder.com/1750x1400.jpg,
  original_url: https://via.placeholder.com/2500x2000.jpg,
  index: 2,
  caption: This is the front of the house.,
  display_in_gallery: true
)
```

