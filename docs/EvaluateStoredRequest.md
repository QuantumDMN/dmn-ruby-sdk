# Quantumdmn::EvaluateStoredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** |  | [optional] |
| **context** | [**Hash&lt;String, FeelValue&gt;**](FeelValue.md) |  |  |
| **business_id** | **String** | Optional identifier for the business object being processed. If provided, existing metrics for this businessId and XML Definition ID will be replaced. | [optional] |
| **decision_services** | **Array&lt;String&gt;** | Names of the Decision Services to evaluate (optional) | [optional] |
| **decisions** | **Array&lt;String&gt;** | List of Decision or Decision Service names to evaluate (optional) | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::EvaluateStoredRequest.new(
  version: null,
  context: null,
  business_id: null,
  decision_services: null,
  decisions: null
)
```

