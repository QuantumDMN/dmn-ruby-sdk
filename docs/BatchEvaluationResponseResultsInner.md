# Quantumdmn::BatchEvaluationResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_id** | **String** |  | [optional] |
| **inputs** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **results** | [**Hash&lt;String, EvaluationResult&gt;**](EvaluationResult.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::BatchEvaluationResponseResultsInner.new(
  execution_id: null,
  inputs: null,
  results: null
)
```

