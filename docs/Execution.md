# Quantumdmn::Execution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **executed_at** | **Time** |  |  |
| **executed_by** | **String** |  | [optional] |
| **inputs** | [**Hash&lt;String, FeelValue&gt;**](FeelValue.md) |  |  |
| **outputs** | [**FeelValue**](FeelValue.md) |  |  |
| **xml_definition_id** | **String** |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::Execution.new(
  id: null,
  definition_id: null,
  executed_at: null,
  executed_by: null,
  inputs: null,
  outputs: null,
  xml_definition_id: null
)
```

