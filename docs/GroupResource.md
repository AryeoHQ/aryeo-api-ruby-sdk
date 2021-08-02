# Aryeo::GroupResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Group**](Group.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::GroupResource.new(
  status: success,
  data: null
)
```

