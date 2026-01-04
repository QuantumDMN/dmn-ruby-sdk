# Quantumdmn::BatchEvaluateDesignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xml** | **String** | The DMN XML definition to evaluate | [optional] |
| **inputs** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | List of input contexts (rows) to evaluate | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::BatchEvaluateDesignRequest.new(
  xml: null,
  inputs: null
)
```

