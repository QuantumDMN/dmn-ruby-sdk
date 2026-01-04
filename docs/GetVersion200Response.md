# Quantumdmn::GetVersion200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** |  | [optional] |
| **build_time** | **String** |  | [optional] |
| **commit** | **String** |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::GetVersion200Response.new(
  version: 1.0.0,
  build_time: 2023-10-27T10:00:00Z,
  commit: abcdef123
)
```

