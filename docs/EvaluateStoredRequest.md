# Quantumdmn::EvaluateStoredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** |  | [optional] |
| **context** | [**Hash&lt;String, FeelValue&gt;**](FeelValue.md) |  |  |
| **decision_services** | **Array&lt;String&gt;** | List of Decision Services to evaluate | [optional] |
| **decisions** | **Array&lt;String&gt;** | List of Decision or Decision Service names to evaluate | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::EvaluateStoredRequest.new(
  version: null,
  context: null,
  decision_services: null,
  decisions: null
)
```

