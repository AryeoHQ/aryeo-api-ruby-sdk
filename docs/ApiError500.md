# Aryeo::ApiError500

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **message** | **String** | The error message. |  |
| **code** | **Integer** | A numeric code corresponding to the error. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ApiError500.new(
  status: error,
  message: {ApiError message.},
  code: 500
)
```

