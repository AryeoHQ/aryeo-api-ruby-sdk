# Aryeo::OrderResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Order**](Order.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderResource.new(
  status: success,
  data: null
)
```

