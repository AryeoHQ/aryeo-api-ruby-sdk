# Aryeo::PropertyWebsite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the website. UUID Version 4. |  |
| **branded_url** | **String** | URL for branded version of website. |  |
| **unbranded_url** | **String** | URL for unbranded version of website. |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PropertyWebsite.new(
  id: 00000000-0000-4000-8000-000000000000,
  branded_url: https://www.aryeo.com/v2/1200-noble-way-flower-mound-1760/branded,
  unbranded_url: https://www.aryeo.com/v2/1200-noble-way-flower-mound-1760/unbranded
)
```

