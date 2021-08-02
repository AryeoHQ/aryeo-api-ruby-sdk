# Aryeo::OrderCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Array&lt;Order&gt;**](Order.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderCollection.new(
  status: success,
  data: null,
  meta: null,
  links: null
)
```

