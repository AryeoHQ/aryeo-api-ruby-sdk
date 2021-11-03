# Aryeo::ProductVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the product variant. UUID Version 4. |  |
| **title** | **String** | The title of the product variant. |  |
| **price** | **Integer** | A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the price of the product variant. |  |
| **duration** | **Integer** | The duration of the product item, in minutes. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ProductVariant.new(
  id: 00000000-0000-4000-8000-000000000000,
  title: House photos,
  price: 10000,
  duration: 60
)
```

