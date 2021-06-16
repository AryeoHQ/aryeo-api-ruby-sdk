# Aryeo::PartialGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the group. |  |
| **group_type** | **String** | The type of group. |  |
| **name** | **String** | The name of the group. |  |
| **logo** | **String** | Group logo. | [optional] |
| **email** | **String** | Email. | [optional] |
| **phone** | **String** | Phone number. | [optional] |
| **is_brokerage_or_brokerage_agent** | **Boolean** | Does this group represent a brokerage or an agent who belongs to a brokerage? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::PartialGroup.new(
  id: 00000000-0000-0000-0000-000000000000,
  group_type: agent,
  name: John Doe Reality,
  logo: https://via.placeholder.com/300.jpg,
  email: john.doe@gmail.com,
  phone: 6175550173,
  is_brokerage_or_brokerage_agent: true
)
```

