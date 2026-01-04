# Quantumdmn::DefinitionsQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max definitions allowed per project (tier limit) | [optional] |
| **projects** | [**Array&lt;ProjectUsage&gt;**](ProjectUsage.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::DefinitionsQuota.new(
  limit: null,
  projects: null
)
```

