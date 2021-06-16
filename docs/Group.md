# Aryeo::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the group. |  |
| **group_type** | **String** | The type of group. |  |
| **name** | **String** | The name of the group. |  |
| **logo** | **String** | Group logo. | [optional] |
| **email** | **String** | Email. | [optional] |
| **phone** | **String** | Phone number. | [optional] |
| **website** | **String** | Website. | [optional] |
| **is_brokerage_or_brokerage_agent** | **Boolean** | Does this group represent a brokerage or an agent who belongs to a brokerage? |  |
| **social_profiles** | [**SocialProfiles**](SocialProfiles.md) |  | [optional] |
| **agent_properties** | [**GroupAgentProperties**](GroupAgentProperties.md) |  | [optional] |
| **users** | [**Array&lt;User&gt;**](User.md) | users | [optional] |
| **default_order_form** | [**OrderForm**](OrderForm.md) |  | [optional] |
| **order_forms** | [**Array&lt;OrderForm&gt;**](OrderForm.md) | An array of order forms. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Group.new(
  id: 00000000-0000-0000-0000-000000000000,
  group_type: agent,
  name: John Doe Reality,
  logo: https://via.placeholder.com/300.jpg,
  email: john.doe@gmail.com,
  phone: 6175550173,
  website: https://www.aryeo.com,
  is_brokerage_or_brokerage_agent: true,
  social_profiles: null,
  agent_properties: null,
  users: null,
  default_order_form: null,
  order_forms: null
)
```

