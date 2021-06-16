# Aryeo::SocialProfiles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **facebook_profile_url** | **String** | URL for Facebook. | [optional] |
| **instagram_profile_url** | **String** | URL for Instagram. | [optional] |
| **twitter_profile_url** | **String** | URL for Twitter. | [optional] |
| **linkedin_profile_url** | **String** | URL for LinkedIn. | [optional] |
| **zillow_profile_url** | **String** | URL for Zillow. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::SocialProfiles.new(
  facebook_profile_url: https://www.facebook.com/johndoe,
  instagram_profile_url: https://www.instagram.com/johndoe,
  twitter_profile_url: https://twitter.com/johndoe,
  linkedin_profile_url: https://www.linkedin.com/in/johndoe/,
  zillow_profile_url: https://www.zillow.com/profile/johndoe
)
```

