# Aryeo::OrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the item. UUID Version 4. |  |
| **title** | **String** | The title of the item. | [optional] |
| **description** | **String** | The description of the item. | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the cost of a single instance of this item. This is multiplied by the quantity to calculate what was or will be charged. | [optional] |
| **quantity** | **Integer** | A positive integer representing the number of instances of this item that was or will be charged. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderItem.new(
  id: 00000000-0000-4000-8000-000000000000,
  title: Aerial Video,
  description: A fly-by drone video of the property.,
  amount: 2099,
  quantity: 2
)
```

