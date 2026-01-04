# Quantumdmn::EvaluationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decision_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **value** | [**FeelValue**](FeelValue.md) |  | [optional] |
| **hit_rules** | [**Array&lt;HitRule&gt;**](HitRule.md) |  | [optional] |
| **dependencies** | [**Array&lt;EvaluationResult&gt;**](EvaluationResult.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::EvaluationResult.new(
  decision_id: null,
  name: null,
  error: null,
  type: null,
  value: null,
  hit_rules: null,
  dependencies: null
)
```

