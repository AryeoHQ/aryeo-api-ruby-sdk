# Aryeo::AppointmentCancelPutPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_customer** | **Boolean** | Sends a notification to the appointment&#39;s order&#39;s customer that the appointment was canceled. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::AppointmentCancelPutPayload.new(
  notify_customer: false
)
```

