# Aryeo::OrderForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the order form. UUID Version 4. |  |
| **title** | **String** | The title or name of the order form. | [optional] |
| **url** | **String** | A URL of a publicly-accessible webpage for this order form. |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderForm.new(
  id: 00000000-0000-4000-8000-000000000000,
  title: BQ&#39;s Photography Order Form,
  url: https://www.aryeo.com/order-forms/00000000-0000-4000-8000-000000000000
)
```

