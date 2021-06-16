# Aryeo::InteractiveContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the content. |  |
| **display_type** | **String** | Is the content branded, unbranded, or both? |  |
| **content_type** | **String** | The type of interactive content. |  |
| **url** | **String** | URL for the content. |  |
| **thumbnail_url** | **String** | A URL for a thumbnail-sized preview of the content. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::InteractiveContent.new(
  id: 00000000-0000-0000-0000-000000000000,
  display_type: branded,
  content_type: matterport,
  url: https://my.matterport.com/show/?m&#x3D;HFaxPzqNFfm,
  thumbnail_url: https://via.placeholder.com/300.jpg
)
```

