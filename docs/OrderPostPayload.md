# Aryeo::OrderPostPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fulfillment_status** | **String** | The fulfillment status of the order. Defaults to \&quot;UNFULFILLED\&quot;. | [optional] |
| **internal_notes** | **String** | Internal notes that will be attached to the order. Viewable only by the team. | [optional] |
| **payment_status** | **String** | The payment status of the order. Defaults to \&quot;UNPAID\&quot;.  | [optional] |
| **address_id** | **String** | ID of the address to associate with the order. UUID Version 4. | [optional] |
| **customer_id** | **String** | ID of the customer to associate with the order. UUID Version 4. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderPostPayload.new(
  fulfillment_status: fulfilled,
  internal_notes: Private note about the order!,
  payment_status: paid,
  address_id: 00000000-0000-4000-8000-000000000000,
  customer_id: 00000000-0000-4000-8000-000000000000
)
```

