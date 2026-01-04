# Quantumdmn::FrontendConfigPaddle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_token** | **String** | Paddle client-side token for checkout | [optional] |
| **sandbox** | **Boolean** | Whether to use Paddle sandbox environment | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::FrontendConfigPaddle.new(
  client_token: test_...,
  sandbox: true
)
```

