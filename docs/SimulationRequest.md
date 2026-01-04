# Quantumdmn::SimulationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xml** | **String** | The DMN XML definition to use for simulation |  |
| **start_date** | **Time** | Filter historical executions after this date (ISO 8601). If not provided, defaults to 24h. | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::SimulationRequest.new(
  xml: null,
  start_date: null
)
```

