# Aryeo::ListingResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | What was the state of the request? |  |
| **data** | [**Listing**](Listing.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::ListingResource.new(
  status: success,
  data: null
)
```

