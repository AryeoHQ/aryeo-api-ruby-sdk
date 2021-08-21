# Aryeo::OrderPostPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fulfillment_status** | **String** | The fulfillment status of the order. Defaults to \&quot;UNFULFILLED\&quot;. | [optional] |
| **payment_status** | **String** | The payment status of the order. Defaults to \&quot;UNPAID\&quot;.  | [optional] |
| **place_id** | **String** | Google Places ID of the address to attach to the order. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderPostPayload.new(
  fulfillment_status: fulfilled,
  payment_status: paid,
  place_id: abcdef_1234
)
```

