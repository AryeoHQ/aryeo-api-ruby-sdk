# Aryeo::PropertyWebsites

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branded_url** | **String** | URL for website. |  |
| **unbranded_url** | **String** | URL for website. |  |
| **id** | **Integer** | ID for property website |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PropertyWebsites.new(
  branded_url: https://www.aryeo.com/v2/1200-noble-way-flower-mound-1760/branded,
  unbranded_url: https://www.aryeo.com/v2/1200-noble-way-flower-mound-1760/unbranded,
  id: 1
)
```

