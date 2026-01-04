# Quantumdmn::PaginationMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Current page number (1-indexed) |  |
| **page_size** | **Integer** | Number of items per page |  |
| **total** | **Integer** | Total number of items |  |
| **total_pages** | **Integer** | Total number of pages |  |

## Example

```ruby
require 'quantumdmn'

instance = Quantumdmn::PaginationMetadata.new(
  page: null,
  page_size: null,
  total: null,
  total_pages: null
)
```

