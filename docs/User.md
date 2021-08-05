# Aryeo::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the user. UUID Version 4. |  |
| **email** | **String** | Email address of the user. |  |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **phone** | **String** | A phone number represented in whichever standards specified by the user, typically ###-###-#### (separated by hyphens). | [optional] |
| **avatar_url** | **String** | The avatar image URL of a user. | [optional] |
| **relationship** | **String** | Describes user&#39;s relationship (access level) to a specified group. Only returned if this resource is returned as a sub-resource of a group. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::User.new(
  id: 00000000-0000-4000-8000-000000000000,
  email: john.doe@gmail.com,
  first_name: John,
  last_name: Doe,
  phone: 123456789,
  avatar_url: https://via.placeholder.com/300.jpg,
  relationship: owner
)
```

