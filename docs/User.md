# Aryeo::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID of the user. |  |
| **avatar** | **String** | Avatar. | [optional] |
| **email** | **String** | Email. |  |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **timezone** | **String** | Timezone. | [optional] |
| **phone** | **String** | Phone number. | [optional] |
| **relationship** | **String** | Describes user&#39;s relationship (access level) to a specified group. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::User.new(
  id: 00000000-0000-0000-0000-000000000000,
  avatar: https://via.placeholder.com/300.jpg,
  email: john.doe@gmail.com,
  first_name: John,
  last_name: Doe,
  timezone: America/New_York,
  phone: 123456789,
  relationship: owner
)
```

