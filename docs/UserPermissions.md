# Quantumdmn::UserPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **global_role** | **String** | User&#39;s global organization role (admin or user) |  |
| **projects** | [**Hash&lt;String, ProjectPermissions&gt;**](ProjectPermissions.md) | Map of projectID to project permissions |  |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::UserPermissions.new(
  global_role: null,
  projects: null
)
```

