# Aryeo::CalendarDay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Calendar day that has available timeslots. |  |
| **is_available** | **Boolean** | Does the day have availability? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::CalendarDay.new(
  date: 2021-01-01,
  is_available: true
)
```

