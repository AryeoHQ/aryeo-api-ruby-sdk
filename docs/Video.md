# Aryeo::Video

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the video. |  |
| **title** | **String** | The title of the video given by the uploading user. | [optional] |
| **display_type** | **String** | The display type determines if the video is branded or unbranded (can also be none or both). This affects whether the video is displayed on branded or unbranded marketing materials such as the property website. |  |
| **source_type** | **String** | The original upload source of the video, used to determine how to handle the playback_url of the video and other display properties.  |  |
| **thumbnail_url** | **String** | Thumbnail URL for the video. |  |
| **playback_url** | **String** | A URL linking to the video. |  |
| **download_url** | **String** | A URL for downloading the video. | [optional] |
| **seconds** | **Integer** | The video&#39;s runtime in seconds. | [optional] |
| **share_url** | **String** | Aryeo iFrame player URL | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Video.new(
  id: 1,
  title: 123 Main Street Video Walkthrough,
  display_type: branded,
  source_type: optimized,
  thumbnail_url: https://via.placeholder.com/300.jpg,
  playback_url: https://player.vimeo.com/video/76979871,
  download_url: https://videos.aryeo.com/listings/00000000-0000-0000-0000-000000000000/00000000-0000-0000-0000-000000000000.mp4,
  seconds: 360,
  share_url: https://www.aryeo.com/v2/00000000-0000-0000-0000-000000000000/videos/1
)
```

