# Quantumdmn::SimulationResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_id** | **String** |  | [optional] |
| **executed_at** | **Time** |  | [optional] |
| **inputs** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **results** | [**Hash&lt;String, EvaluationResult&gt;**](EvaluationResult.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::SimulationResponseResultsInner.new(
  execution_id: null,
  executed_at: null,
  inputs: null,
  results: null
)
```

