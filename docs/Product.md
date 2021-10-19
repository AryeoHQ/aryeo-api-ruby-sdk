# Aryeo::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the product. UUID Version 4. |  |
| **title** | **String** | The title of the product. |  |
| **description** | **String** | The description of the product. | [optional] |
| **active** | **Boolean** | The active status of a product. | [optional] |
| **type** | **String** | The type of product. |  |
| **variants** | [**Array&lt;ProductVariant&gt;**](ProductVariant.md) |  | [optional] |
| **categories** | [**Array&lt;ProductCategory&gt;**](ProductCategory.md) |  | [optional] |

## Example

```ruby
require 'aryeo'

instance = Aryeo::Product.new(
  id: 00000000-0000-4000-8000-000000000000,
  title: House photos,
  description: Capture photos of a house for sale.,
  active: true,
  type: MAIN,
  variants: null,
  categories: null
)
```

