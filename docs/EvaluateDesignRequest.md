# Quantumdmn::EvaluateDesignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xml** | **String** |  |  |
| **context** | [**Hash&lt;String, FeelValue&gt;**](FeelValue.md) |  | [optional] |
| **decision_services** | **Array&lt;String&gt;** | Names of the Decision Services to evaluate (optional) | [optional] |
| **decisions** | **Array&lt;String&gt;** | List of Decision or Decision Service names to evaluate (optional) | [optional] |
| **kpi_initial_state** | **Hash&lt;String, Array&lt;EvaluateDesignRequestKpiInitialStateValueInner&gt;&gt;** | Initial state for windowed KPIs (KPI ID -&gt; array of timestamped values) | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::EvaluateDesignRequest.new(
  xml: null,
  context: null,
  decision_services: null,
  decisions: null,
  kpi_initial_state: null
)
```

