# Aryeo::ApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **message** | **String** | The error message. |  |
| **code** | **Integer** | A numeric code corresponding to the error. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ApiError.new(
  status: error,
  message: Not found.,
  code: 404
)
```

