# QuantumDMN Ruby SDK

Ruby client library for the [QuantumDMN](https://quantumdmn.com) decision engine API.

## Installation

Add to your Gemfile:

```ruby
gem 'quantumdmn-sdk'
```

Or install directly:

```bash
gem install quantumdmn-sdk
```

Or build from source:

```bash
gem build quantumdmn.gemspec
gem install ./quantumdmn-sdk-1.0.0.gem
```

## Features

- **High-Level `DmnEngine`**: Simplified interface for DMN evaluation
- **Full API Coverage**: Access to all underlying API endpoints
- **Zitadel Authentication**: Built-in `ZitadelTokenProvider` for service account authentication
- **Native Ruby Types**: Work with Hash, Array, String, Integer, Boolean directly

## Quick Start

```ruby
require 'quantumdmn'

# authentication with Zitadel
auth = Quantumdmn::ZitadelTokenProvider.new(
  'path/to/key.json',
  'https://auth.quantumdmn.com',
  'your-zitadel-project-id'
)

# configure API client
config = Quantumdmn::Configuration.new
config.host = 'https://api.quantumdmn.com'

client = Quantumdmn::ApiClient.new(config)
client.default_headers['Authorization'] = "Bearer #{auth.token}"

# create DMN engine
engine = Quantumdmn::DmnEngine.new(client, 'your-dmn-project-id')

# evaluate a decision
result = engine.evaluate(
  'your-definition-id',
  { 'input1' => 100, 'input2' => 'value' }
)

# process results
result.each do |name, eval_result|
  puts "#{name}: #{eval_result.value}"
end
```

## Authentication

### Zitadel Service Account

The SDK includes a `ZitadelTokenProvider` for authenticating with Zitadel service accounts:

```ruby
require 'quantumdmn'

# create token provider
# project_id is the Zitadel Project ID (different from DMN Project ID)
# used to request project-specific audience and roles
auth = Quantumdmn::ZitadelTokenProvider.new(
  'service-account-key.json',
  'https://auth.quantumdmn.com',
  'zitadel-project-id'
)

# get access token (cached automatically)
token = auth.token
```

The token provider automatically:
- Creates JWT assertions signed with your service account key
- Exchanges them for access tokens
- Caches tokens until they expire
- Includes required Zitadel scopes and project audience

### Custom Authentication

You can also provide tokens from other sources:

```ruby
config = Quantumdmn::Configuration.new
config.host = 'https://api.quantumdmn.com'

client = Quantumdmn::ApiClient.new(config)
client.default_headers['Authorization'] = "Bearer #{your_token}"
```

## Using the DMN Engine

The `DmnEngine` class provides a simplified interface for DMN evaluation:

```ruby
require 'quantumdmn'

# setup (authentication shown in previous section)
engine = Quantumdmn::DmnEngine.new(api_client, 'your-project-id')

# evaluate by definition ID (UUID or XML ID)
result = engine.evaluate(
  '_myDecisionId',  # or UUID
  {
    'age' => 25,
    'income' => 50000,
    'risk_factors' => ['debt', 'history']
  },
  version: nil  # optional: specify version number
)

# result is Hash of decision name => EvaluationResult
result.each do |key, eval_result|
  puts "#{key}:"
  puts "  Value: #{eval_result.value}"
  puts "  Type: #{eval_result.type}"
  puts "  Decision ID: #{eval_result.decision_id}"
end
```

### Working with Native Ruby Types

The SDK works directly with standard Ruby types - no special wrappers needed:

```ruby
context = {
  'string_val' => 'hello',
  'number_val' => 42,
  'boolean_val' => true,
  'list_val' => [1, 2, 3],
  'hash_val' => { 'nested' => 'value' },
  'nil_val' => nil
}

result = engine.evaluate('decision-id', context)

# results come back as native Ruby types
result.each do |name, eval_result|
  # value is a native Ruby type (Hash, Array, String, Integer, etc.)
  puts "#{name}: #{eval_result.value.inspect}"
end
```

## Direct API Access

For more control, use the generated API client directly:

```ruby
require 'quantumdmn'

# setup client
config = Quantumdmn::Configuration.new
config.host = 'https://api.quantumdmn.com'

client = Quantumdmn::ApiClient.new(config)
client.default_headers['Authorization'] = "Bearer #{token}"

api = Quantumdmn::DefaultApi.new(client)

# evaluate with full control
request = Quantumdmn::EvaluateStoredRequest.new(
  context: { 'input' => 100 },
  version: 1
)

response = api.evaluate_stored(
  'project-uuid',
  'definition-uuid',
  request
)

# response is Hash of decision name => EvaluationResult
response.each do |key, evaluation|
  puts "#{key}: #{evaluation.value}"
end
```

### Other API Operations

```ruby
# list projects
projects = api.list_projects

# list definitions
definitions = api.list_definitions('project-id')

# get definition
definition = api.get_definition('project-id', 'definition-id')

# create definition
request = Quantumdmn::CreateDefinitionRequest.new(
  name: 'My Decision',
  xml_content: dmn_xml_string
)
new_def = api.create_definition('project-id', request)

# list executions
executions = api.list_project_executions('project-id', limit: 10, offset: 0)
```

## Error Handling

```ruby
begin
  result = engine.evaluate('definition-id', context)
rescue Quantumdmn::ApiError => e
  puts "API Error: #{e.code} - #{e.message}"
  puts "Response: #{e.response_body}" if e.response_body
end
```

## Configuration Options

```ruby
config = Quantumdmn::Configuration.new

# server configuration
config.host = 'https://api.quantumdmn.com'
config.scheme = 'https'

# SSL verification
config.verify_ssl = true
config.ssl_ca_cert = '/path/to/ca-bundle.crt'

# timeouts and debugging
config.timeout = 30
config.debugging = false

# proxy
config.proxy = 'http://proxy:8080'
```

## Complete Example

```ruby
require 'quantumdmn'

# configuration
API_URL = ENV['DMN_API_URL'] || 'https://api.quantumdmn.com'
AUTH_URL = ENV['DMN_AUTH_URL'] || 'https://auth.quantumdmn.com'
KEY_FILE = ENV['DMN_KEY_FILE']
PROJECT_ID = ENV['DMN_PROJECT_ID']
ZITADEL_PROJECT_ID = ENV['ZITADEL_PROJECT_ID']

# authentication
auth = Quantumdmn::ZitadelTokenProvider.new(
  KEY_FILE,
  AUTH_URL,
  ZITADEL_PROJECT_ID
)

# configure API client
config = Quantumdmn::Configuration.new
config.host = API_URL

client = Quantumdmn::ApiClient.new(config)
client.default_headers['Authorization'] = "Bearer #{auth.token}"

# create engine
engine = Quantumdmn::DmnEngine.new(client, PROJECT_ID)

# evaluate
begin
  result = engine.evaluate(
    '_myDecisionId',
    {
      'amount' => 1000,
      'customer_type' => 'premium',
      'risk_score' => 0.25
    }
  )
  
  puts 'Decision result:'
  result.each do |key, eval_result|
    puts "  #{key}: #{eval_result.value}"
  end
rescue Quantumdmn::ApiError => e
  puts "Evaluation failed: #{e.code} #{e.message}"
  puts "Details: #{e.response_body}" if e.response_body
  exit 1
end
```

## License

MIT License - see [LICENSE](LICENSE) for details.
