# Aryeo::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the order. |  |
| **display_id** | **Integer** | A vanity id to be displayed for the order. For example, \&quot;Order #1000\&quot;. |  |
| **total_price_cents** | **Integer** | The total price of the order given in cents. |  |
| **currency** | [**Currency**](Currency.md) |  |  |
| **payment_status** | **String** | The payment status of the order. |  |
| **payment_url** | **String** | A URL for to pay for the order. | [optional] |
| **listing** | [**PartialListing**](PartialListing.md) |  | [optional] |
| **fulfillment_status** | **String** | The fulfillment status of the order. |  |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Order.new(
  id: 00000000-0000-0000-0000-000000000000,
  display_id: 100,
  total_price_cents: 2099,
  currency: null,
  payment_status: paid,
  payment_url: https://www.aryeo.com/v2/stripe/checkout/order/00000000-0000-0000-0000-000000000000?pageType&#x3D;order,
  listing: null,
  fulfillment_status: fulfilled
)
```

