# Aryeo::Timeslot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_at** | **String** | Start time of the available slot |  |
| **end_at** | **String** | End time of the available slot |  |
| **users** | [**Array&lt;User&gt;**](User.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Timeslot.new(
  start_at: 2021-01-01T00:00:00Z,
  end_at: 2021-01-01T00:30:00Z,
  users: null
)
```

