# Aryeo::PaginationLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | The first page. |  |
| **last** | **String** | The last page. |  |
| **prev** | **String** | The previous page. This is specified as either &#x60;string&#x60; or &#x60;null&#x60; purely for spec testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand. | [optional] |
| **_next** | **String** | The next page. This is specified as either &#x60;string&#x60; or &#x60;null&#x60; purely for spec testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PaginationLinks.new(
  first: https://api.aryeo.com/v1/{path}?page&#x3D;1,
  last: https://api.aryeo.com/v1/{path}?page&#x3D;10,
  prev: https://api.aryeo.com/v1/{path}?page&#x3D;2,
  _next: https://api.aryeo.com/v1/{path}?page&#x3D;3
)
```

