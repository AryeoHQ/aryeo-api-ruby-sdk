# Aryeo::GroupAgentProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brokerage_name** | **String** | Name of brokerage. | [optional] |
| **agent_license_number** | **String** | Agent&#39;s license number. | [optional] |
| **agent_avatar** | **String** | Agent&#39;s profile image URL. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::GroupAgentProperties.new(
  brokerage_name: John Doe Brokerage,
  agent_license_number: 12345678,
  agent_avatar: https://via.placeholder.com/300.jpg
)
```

