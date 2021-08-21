# Aryeo::AppointmentResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Appointment**](Appointment.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::AppointmentResource.new(
  status: success,
  data: null
)
```

