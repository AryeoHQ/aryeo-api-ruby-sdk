# Aryeo::ProductCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the product category. UUID Version 4. |  |
| **title** | **String** | The title of the product category. |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ProductCategory.new(
  id: 00000000-0000-4000-8000-000000000000,
  title: Photography
)
```

