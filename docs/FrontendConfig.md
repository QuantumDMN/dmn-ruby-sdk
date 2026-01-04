# Quantumdmn::FrontendConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oidc** | [**FrontendConfigOidc**](FrontendConfigOidc.md) |  |  |
| **paddle** | [**FrontendConfigPaddle**](FrontendConfigPaddle.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::FrontendConfig.new(
  oidc: null,
  paddle: null
)
```

