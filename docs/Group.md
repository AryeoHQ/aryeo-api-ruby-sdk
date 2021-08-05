# Aryeo::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the group. UUID Version 4. |  |
| **type** | **String** | The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned. |  |
| **name** | **String** | The name of the group. |  |
| **email** | **String** | The email address of a group. | [optional] |
| **phone** | **String** | A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens). | [optional] |
| **website_url** | **String** | The website URL of a group. | [optional] |
| **logo_url** | **String** | The logo URL of a group. | [optional] |
| **avatar_url** | **String** | The profile image URL of a real estate agent. Only returned if group&#39;s type is AGENT. | [optional] |
| **office_name** | **String** | The name of the brokerage or team of a real estate agent. Only returned if group&#39;s type is AGENT. | [optional] |
| **license_number** | **String** | The license number of a real estate agent. Only returned if group&#39;s type is AGENT. | [optional] |
| **social_profiles** | [**SocialProfiles**](SocialProfiles.md) |  | [optional] |
| **default_order_form** | [**OrderForm**](OrderForm.md) |  | [optional] |
| **order_forms** | [**Array&lt;OrderForm&gt;**](OrderForm.md) | An array of order forms a vendor group provides for placing orders. Only returned if group&#39;s type is CREATOR.  | [optional] |
| **owner** | [**User**](User.md) |  | [optional] |
| **users** | [**Array&lt;User&gt;**](User.md) | The Aryeo users associated with this group. | [optional] |
| **is_brokerage_or_brokerage_agent** | **Boolean** | Does this group represent a brokerage or an agent who belongs to a brokerage? |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Group.new(
  id: 00000000-0000-4000-8000-000000000000,
  type: AGENT,
  name: John Doe Reality,
  email: john.doe@gmail.com,
  phone: 6175550173,
  website_url: https://www.aryeo.com,
  logo_url: https://via.placeholder.com/300.jpg,
  avatar_url: https://via.placeholder.com/300.jpg,
  office_name: John Doe Brokerage,
  license_number: 12345678,
  social_profiles: null,
  default_order_form: null,
  order_forms: null,
  owner: null,
  users: null,
  is_brokerage_or_brokerage_agent: true
)
```

