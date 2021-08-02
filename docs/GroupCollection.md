# Aryeo::GroupCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::GroupCollection.new(
  status: success,
  data: null,
  meta: null,
  links: null
)
```

