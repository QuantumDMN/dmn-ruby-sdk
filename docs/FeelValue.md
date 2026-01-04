# Quantumdmn::FeelValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'quantumdmn'

Quantumdmn::FeelValue.openapi_one_of
# =>
# [
#   :'Array<FeelValue>',
#   :'Boolean',
#   :'Float',
#   :'Hash<String, FeelValue>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'quantumdmn'

Quantumdmn::FeelValue.build(data)
# => #<Array<FeelValue>:0x00007fdd4aab02a0>

Quantumdmn::FeelValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<FeelValue>`
- `Boolean`
- `Float`
- `Hash<String, FeelValue>`
- `String`
- `nil` (if no type matches)

