# Quantumdmn::TierFeaturesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credits** | **Integer** |  | [optional] |
| **overcharge_price_per100_credits** | **Integer** |  | [optional] |
| **limits** | [**TierLimits**](TierLimits.md) |  | [optional] |
| **features** | **Hash&lt;String, Boolean&gt;** |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::TierFeaturesConfig.new(
  credits: null,
  overcharge_price_per100_credits: null,
  limits: null,
  features: null
)
```

