# Quantumdmn::Quota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier_id** | **String** | The ID of the current tier (e.g., developer, starter, scale) |  |
| **credits** | [**CreditsQuota**](CreditsQuota.md) |  | [optional] |
| **history** | [**QuotaItem**](QuotaItem.md) |  | [optional] |
| **projects** | [**QuotaItem**](QuotaItem.md) |  | [optional] |
| **definitions** | [**DefinitionsQuota**](DefinitionsQuota.md) |  | [optional] |
| **users** | [**QuotaItem**](QuotaItem.md) |  | [optional] |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::Quota.new(
  tier_id: null,
  credits: null,
  history: null,
  projects: null,
  definitions: null,
  users: null
)
```

