# Quantumdmn::ProjectPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | Project role (admin, editor, executor, viewer) |  |
| **can_manage_members** | **Boolean** |  |  |
| **can_edit_definitions** | **Boolean** |  |  |
| **can_execute** | **Boolean** |  |  |
| **can_view** | **Boolean** |  |  |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::ProjectPermissions.new(
  role: null,
  can_manage_members: null,
  can_edit_definitions: null,
  can_execute: null,
  can_view: null
)
```

