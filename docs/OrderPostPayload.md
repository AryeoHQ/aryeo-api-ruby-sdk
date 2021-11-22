# Aryeo::OrderPostPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fulfillment_status** | **String** | The fulfillment status of the order. Defaults to \&quot;UNFULFILLED\&quot;. | [optional] |
| **internal_notes** | **String** | Internal notes that will be attached to the order. Viewable only by the team. | [optional] |
| **address_id** | **String** | ID of the address to associate with the order. UUID Version 4. | [optional] |
| **customer_id** | **String** | ID of the customer to associate with the order. UUID Version 4. | [optional] |
| **notify** | **Boolean** | Indicates if the customer and creator notifications should be sent when creating the order. Requires an address and customer to be set in order for the notifications to be sent. | [optional] |
| **lock_download_for_payment** | **Boolean** | Indicates if the downloads for the attached listing should be locked while there is an outstanding balance on the order. | [optional] |
| **allow_payments_before_fulfillment** | **Boolean** | Indicates if the order will allow payments from the customer before the order is marked as fulfilled. | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderPostPayload.new(
  fulfillment_status: fulfilled,
  internal_notes: Private note about the order!,
  address_id: 00000000-0000-4000-8000-000000000000,
  customer_id: 00000000-0000-4000-8000-000000000000,
  notify: true,
  lock_download_for_payment: true,
  allow_payments_before_fulfillment: true
)
```

