# Aryeo::AppointmentReschedulePutPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_at** | **Time** | The new date and time (ISO 8601 format) when the appointment is set to start. |  |
| **end_at** | **Time** | The new date and time (ISO 8601 format) when the appointment is set to end. |  |
| **notify_customer** | **Boolean** | Send a notification to the appointment&#39;s order&#39;s customer that the appointment was rescheduled. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::AppointmentReschedulePutPayload.new(
  start_at: 2021-06-30T20:30Z,
  end_at: 2021-06-30T21:30Z,
  notify_customer: false
)
```

