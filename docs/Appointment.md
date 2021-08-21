# Aryeo::Appointment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the appointment. |  |
| **status** | **String** | The status of the appointment. | [optional] |
| **title** | **String** | The title of the appointment. | [optional] |
| **description** | **String** | The multi-line description of the appointment. | [optional] |
| **start_at** | **Time** | The date and time (ISO 8601 format) when the appointment is set to start. | [optional] |
| **end_at** | **Time** | The date and time (ISO 8601 format) when the appointment is set to end. | [optional] |
| **duration** | **Integer** | The length of the appointment in minutes. | [optional] |
| **order** | [**Order**](Order.md) |  | [optional] |
| **users** | [**Array&lt;User&gt;**](User.md) | Users attached to the appointment. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Appointment.new(
  id: 00000000-0000-0000-0000-000000000000,
  status: SCHEDULED,
  title: Appointment title,
  description: Customer: John Doe
Order Details: Order #123,
  start_at: 2021-06-30T20:30Z,
  end_at: 2021-06-30T20:30Z,
  duration: 60,
  order: null,
  users: null
)
```

