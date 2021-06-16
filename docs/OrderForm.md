# Aryeo::OrderForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID of the order form. |  |
| **name** | **String** | The name of the order form. | [optional] |
| **url** | **String** | A URL of a publicly-accessible webpage for this order form. |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderForm.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: BQ&#39;s Photography Order Form,
  url: https://www.aryeo.com/order-forms/00000000-0000-0000-0000-000000000000
)
```

