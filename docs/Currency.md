# Aryeo::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the currency. |  |
| **name** | **String** | The name of the currency. |  |
| **symbol** | **String** | The currency symbol. |  |
| **enabled** | **Boolean** | Is this currency enabled for Aryeo? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Currency.new(
  id: usd,
  name: USD,
  symbol: $,
  enabled: true
)
```

