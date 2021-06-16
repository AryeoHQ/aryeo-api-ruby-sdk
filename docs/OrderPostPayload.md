# Aryeo::OrderPostPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fulfillment_status** | **String** | The fulfillment status of the order. | [optional] |
| **payment_status** | **String** | The payment status of the order. | [optional] |
| **product_items** | [**Array&lt;ProductItem&gt;**](ProductItem.md) | product_items | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::OrderPostPayload.new(
  fulfillment_status: fulfilled,
  payment_status: paid,
  product_items: null
)
```

