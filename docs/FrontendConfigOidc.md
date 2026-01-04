# Quantumdmn::FrontendConfigOidc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authority** | **String** | OIDC authority URL (issuer) |  |
| **client_id** | **String** | OIDC client ID for the web application |  |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::FrontendConfigOidc.new(
  authority: http://localhost:8080,
  client_id: 123456789@dmn-engine
)
```

