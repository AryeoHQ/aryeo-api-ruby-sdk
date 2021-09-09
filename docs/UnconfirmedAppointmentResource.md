# Aryeo::UnconfirmedAppointmentResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**UnconfirmedAppointment**](UnconfirmedAppointment.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::UnconfirmedAppointmentResource.new(
  status: success,
  data: null
)
```

