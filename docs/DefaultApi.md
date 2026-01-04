# Quantumdmn::DefaultApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_project_member**](DefaultApi.md#add_project_member) | **POST** /projects/{projectID}/members | Add Project Member |
| [**batch_get_users**](DefaultApi.md#batch_get_users) | **POST** /users/batch | Batch Get Organization Users |
| [**create_definition**](DefaultApi.md#create_definition) | **POST** /projects/{projectID}/definitions | Create Definition |
| [**create_project**](DefaultApi.md#create_project) | **POST** /projects | Create Project |
| [**create_subscription_upgrade_transaction**](DefaultApi.md#create_subscription_upgrade_transaction) | **POST** /billing/upgrade-transaction | Create Subscription Upgrade Transaction |
| [**delete_definition**](DefaultApi.md#delete_definition) | **DELETE** /projects/{projectID}/definitions/{definitionID} | Delete Definition |
| [**delete_project**](DefaultApi.md#delete_project) | **DELETE** /projects/{projectID} | Delete Project |
| [**evaluate_by_xmlid**](DefaultApi.md#evaluate_by_xmlid) | **POST** /projects/{projectID}/definitions/by-xml-id/{xmlDefinitionID}/evaluate | Evaluate definition by XML definition ID |
| [**evaluate_design**](DefaultApi.md#evaluate_design) | **POST** /evaluate/design | Evaluate DMN Design |
| [**evaluate_design_batch**](DefaultApi.md#evaluate_design_batch) | **POST** /evaluate/design/batch | Batch evaluate a DMN design with multiple inputs |
| [**evaluate_stored**](DefaultApi.md#evaluate_stored) | **POST** /projects/{projectID}/definitions/{definitionID}/evaluate | Evaluate Stored Definition |
| [**get_customer_portal_session**](DefaultApi.md#get_customer_portal_session) | **GET** /subscription/portal-session | Get Customer Portal Session |
| [**get_definition**](DefaultApi.md#get_definition) | **GET** /projects/{projectID}/definitions/{definitionID} | Get Definition |
| [**get_definition_by_xmlid**](DefaultApi.md#get_definition_by_xmlid) | **GET** /projects/{projectID}/definitions/by-xml-id/{xmlDefinitionID} | Get definition by XML definition ID |
| [**get_execution**](DefaultApi.md#get_execution) | **GET** /projects/{projectID}/executions/{executionID} | Get Execution |
| [**get_frontend_config**](DefaultApi.md#get_frontend_config) | **GET** /config | Get Frontend Configuration |
| [**get_health**](DefaultApi.md#get_health) | **GET** /health | Health Check |
| [**get_limits**](DefaultApi.md#get_limits) | **GET** /limits | Get Quota Limits |
| [**get_overview**](DefaultApi.md#get_overview) | **GET** /overview | Get Overview Dashboard Data |
| [**get_project**](DefaultApi.md#get_project) | **GET** /projects/{projectID} | Get Project |
| [**get_tier**](DefaultApi.md#get_tier) | **GET** /tiers/{tierID} | Get Tier |
| [**get_user_permissions**](DefaultApi.md#get_user_permissions) | **GET** /permissions | Get User Permissions |
| [**get_version**](DefaultApi.md#get_version) | **GET** /version | Version |
| [**list_definition_versions**](DefaultApi.md#list_definition_versions) | **GET** /projects/{projectID}/definitions/by-definition-id/{definitionId} | List all versions of a specific definition_id |
| [**list_definitions**](DefaultApi.md#list_definitions) | **GET** /projects/{projectID}/definitions | List Definitions |
| [**list_executions**](DefaultApi.md#list_executions) | **GET** /projects/{projectID}/definitions/{definitionID}/executions | List Executions for Definition |
| [**list_latest_definitions**](DefaultApi.md#list_latest_definitions) | **GET** /projects/{projectID}/definitions/latest | List Latest Definitions (one per definition_id) |
| [**list_project_executions**](DefaultApi.md#list_project_executions) | **GET** /projects/{projectID}/executions | List All Executions for Project |
| [**list_project_members**](DefaultApi.md#list_project_members) | **GET** /projects/{projectID}/members | List Project Members |
| [**list_projects**](DefaultApi.md#list_projects) | **GET** /projects | List Projects |
| [**list_tiers**](DefaultApi.md#list_tiers) | **GET** /tiers | List Tiers |
| [**list_users**](DefaultApi.md#list_users) | **GET** /users | List Organization Users |
| [**remove_project_member**](DefaultApi.md#remove_project_member) | **DELETE** /projects/{projectID}/members/{userID} | Remove Project Member |
| [**run_simulation**](DefaultApi.md#run_simulation) | **POST** /projects/{projectID}/definitions/{definitionID}/simulate | Run Simulation on Historical Data |
| [**update_customer_settings**](DefaultApi.md#update_customer_settings) | **PATCH** /settings | Update Customer Settings |
| [**update_definition**](DefaultApi.md#update_definition) | **PUT** /projects/{projectID}/definitions/{definitionID} | Update Definition |
| [**update_project_member_role**](DefaultApi.md#update_project_member_role) | **PUT** /projects/{projectID}/members/{userID} | Update Project Member Role |


## add_project_member

> <ProjectMember> add_project_member(project_id, add_project_member_request)

Add Project Member

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
add_project_member_request = Quantumdmn::AddProjectMemberRequest.new({user_id: 'user_id_example', role: 'role_example'}) # AddProjectMemberRequest | 

begin
  # Add Project Member
  result = api_instance.add_project_member(project_id, add_project_member_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->add_project_member: #{e}"
end
```

#### Using the add_project_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectMember>, Integer, Hash)> add_project_member_with_http_info(project_id, add_project_member_request)

```ruby
begin
  # Add Project Member
  data, status_code, headers = api_instance.add_project_member_with_http_info(project_id, add_project_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectMember>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->add_project_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **add_project_member_request** | [**AddProjectMemberRequest**](AddProjectMemberRequest.md) |  |  |

### Return type

[**ProjectMember**](ProjectMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_get_users

> <Array<OrganizationUser>> batch_get_users(batch_get_users_request)

Batch Get Organization Users

Retrieve multiple users by their IDs. Available to all authenticated organization members.

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
batch_get_users_request = Quantumdmn::BatchGetUsersRequest.new({user_ids: ['user_ids_example']}) # BatchGetUsersRequest | 

begin
  # Batch Get Organization Users
  result = api_instance.batch_get_users(batch_get_users_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->batch_get_users: #{e}"
end
```

#### Using the batch_get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrganizationUser>>, Integer, Hash)> batch_get_users_with_http_info(batch_get_users_request)

```ruby
begin
  # Batch Get Organization Users
  data, status_code, headers = api_instance.batch_get_users_with_http_info(batch_get_users_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrganizationUser>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->batch_get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_get_users_request** | [**BatchGetUsersRequest**](BatchGetUsersRequest.md) |  |  |

### Return type

[**Array&lt;OrganizationUser&gt;**](OrganizationUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_definition

> <Definition> create_definition(project_id, create_definition_request)

Create Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
create_definition_request = Quantumdmn::CreateDefinitionRequest.new({name: 'name_example', xml: 'xml_example'}) # CreateDefinitionRequest | 

begin
  # Create Definition
  result = api_instance.create_definition(project_id, create_definition_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_definition: #{e}"
end
```

#### Using the create_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Definition>, Integer, Hash)> create_definition_with_http_info(project_id, create_definition_request)

```ruby
begin
  # Create Definition
  data, status_code, headers = api_instance.create_definition_with_http_info(project_id, create_definition_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Definition>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_definition_request** | [**CreateDefinitionRequest**](CreateDefinitionRequest.md) |  |  |

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_project

> <Project> create_project(create_project_request)

Create Project

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
create_project_request = Quantumdmn::CreateProjectRequest.new({name: 'name_example', customer_id: 'customer_id_example'}) # CreateProjectRequest | 

begin
  # Create Project
  result = api_instance.create_project(create_project_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_project: #{e}"
end
```

#### Using the create_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> create_project_with_http_info(create_project_request)

```ruby
begin
  # Create Project
  data, status_code, headers = api_instance.create_project_with_http_info(create_project_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_project_request** | [**CreateProjectRequest**](CreateProjectRequest.md) |  |  |

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_subscription_upgrade_transaction

> <CreateSubscriptionUpgradeTransaction200Response> create_subscription_upgrade_transaction(create_subscription_upgrade_transaction_request)

Create Subscription Upgrade Transaction

Creates a Paddle transaction to upgrade/downgrade the current subscription

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
create_subscription_upgrade_transaction_request = Quantumdmn::CreateSubscriptionUpgradeTransactionRequest.new({price_id: 'price_id_example'}) # CreateSubscriptionUpgradeTransactionRequest | 

begin
  # Create Subscription Upgrade Transaction
  result = api_instance.create_subscription_upgrade_transaction(create_subscription_upgrade_transaction_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_subscription_upgrade_transaction: #{e}"
end
```

#### Using the create_subscription_upgrade_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSubscriptionUpgradeTransaction200Response>, Integer, Hash)> create_subscription_upgrade_transaction_with_http_info(create_subscription_upgrade_transaction_request)

```ruby
begin
  # Create Subscription Upgrade Transaction
  data, status_code, headers = api_instance.create_subscription_upgrade_transaction_with_http_info(create_subscription_upgrade_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSubscriptionUpgradeTransaction200Response>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->create_subscription_upgrade_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_subscription_upgrade_transaction_request** | [**CreateSubscriptionUpgradeTransactionRequest**](CreateSubscriptionUpgradeTransactionRequest.md) |  |  |

### Return type

[**CreateSubscriptionUpgradeTransaction200Response**](CreateSubscriptionUpgradeTransaction200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_definition

> delete_definition(project_id, definition_id)

Delete Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete Definition
  api_instance.delete_definition(project_id, definition_id)
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->delete_definition: #{e}"
end
```

#### Using the delete_definition_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_definition_with_http_info(project_id, definition_id)

```ruby
begin
  # Delete Definition
  data, status_code, headers = api_instance.delete_definition_with_http_info(project_id, definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->delete_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_project

> delete_project(project_id)

Delete Project

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete Project
  api_instance.delete_project(project_id)
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->delete_project: #{e}"
end
```

#### Using the delete_project_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_project_with_http_info(project_id)

```ruby
begin
  # Delete Project
  data, status_code, headers = api_instance.delete_project_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->delete_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## evaluate_by_xmlid

> <Hash<String, EvaluationResult>> evaluate_by_xmlid(project_id, xml_definition_id, evaluate_stored_request, opts)

Evaluate definition by XML definition ID

Evaluate a decision using XML definition ID (uses latest version unless version parameter specified)

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
xml_definition_id = 'xml_definition_id_example' # String | The XML definition ID from the DMN model
evaluate_stored_request = Quantumdmn::EvaluateStoredRequest.new({context: { key: nil}}) # EvaluateStoredRequest | 
opts = {
  version: 56 # Integer | Specific version number (defaults to latest version)
}

begin
  # Evaluate definition by XML definition ID
  result = api_instance.evaluate_by_xmlid(project_id, xml_definition_id, evaluate_stored_request, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_by_xmlid: #{e}"
end
```

#### Using the evaluate_by_xmlid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, EvaluationResult>>, Integer, Hash)> evaluate_by_xmlid_with_http_info(project_id, xml_definition_id, evaluate_stored_request, opts)

```ruby
begin
  # Evaluate definition by XML definition ID
  data, status_code, headers = api_instance.evaluate_by_xmlid_with_http_info(project_id, xml_definition_id, evaluate_stored_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, EvaluationResult>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_by_xmlid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **xml_definition_id** | **String** | The XML definition ID from the DMN model |  |
| **evaluate_stored_request** | [**EvaluateStoredRequest**](EvaluateStoredRequest.md) |  |  |
| **version** | **Integer** | Specific version number (defaults to latest version) | [optional] |

### Return type

[**Hash&lt;String, EvaluationResult&gt;**](EvaluationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## evaluate_design

> <Hash<String, EvaluationResult>> evaluate_design(evaluate_design_request)

Evaluate DMN Design

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
evaluate_design_request = Quantumdmn::EvaluateDesignRequest.new({xml: 'xml_example'}) # EvaluateDesignRequest | 

begin
  # Evaluate DMN Design
  result = api_instance.evaluate_design(evaluate_design_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_design: #{e}"
end
```

#### Using the evaluate_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, EvaluationResult>>, Integer, Hash)> evaluate_design_with_http_info(evaluate_design_request)

```ruby
begin
  # Evaluate DMN Design
  data, status_code, headers = api_instance.evaluate_design_with_http_info(evaluate_design_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, EvaluationResult>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluate_design_request** | [**EvaluateDesignRequest**](EvaluateDesignRequest.md) |  |  |

### Return type

[**Hash&lt;String, EvaluationResult&gt;**](EvaluationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## evaluate_design_batch

> <BatchEvaluationResponse> evaluate_design_batch(batch_evaluate_design_request)

Batch evaluate a DMN design with multiple inputs

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
batch_evaluate_design_request = Quantumdmn::BatchEvaluateDesignRequest.new # BatchEvaluateDesignRequest | 

begin
  # Batch evaluate a DMN design with multiple inputs
  result = api_instance.evaluate_design_batch(batch_evaluate_design_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_design_batch: #{e}"
end
```

#### Using the evaluate_design_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchEvaluationResponse>, Integer, Hash)> evaluate_design_batch_with_http_info(batch_evaluate_design_request)

```ruby
begin
  # Batch evaluate a DMN design with multiple inputs
  data, status_code, headers = api_instance.evaluate_design_batch_with_http_info(batch_evaluate_design_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchEvaluationResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_design_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_evaluate_design_request** | [**BatchEvaluateDesignRequest**](BatchEvaluateDesignRequest.md) |  |  |

### Return type

[**BatchEvaluationResponse**](BatchEvaluationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## evaluate_stored

> <Hash<String, EvaluationResult>> evaluate_stored(project_id, definition_id, evaluate_stored_request)

Evaluate Stored Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
evaluate_stored_request = Quantumdmn::EvaluateStoredRequest.new({context: { key: nil}}) # EvaluateStoredRequest | 

begin
  # Evaluate Stored Definition
  result = api_instance.evaluate_stored(project_id, definition_id, evaluate_stored_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_stored: #{e}"
end
```

#### Using the evaluate_stored_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, EvaluationResult>>, Integer, Hash)> evaluate_stored_with_http_info(project_id, definition_id, evaluate_stored_request)

```ruby
begin
  # Evaluate Stored Definition
  data, status_code, headers = api_instance.evaluate_stored_with_http_info(project_id, definition_id, evaluate_stored_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, EvaluationResult>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->evaluate_stored_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **evaluate_stored_request** | [**EvaluateStoredRequest**](EvaluateStoredRequest.md) |  |  |

### Return type

[**Hash&lt;String, EvaluationResult&gt;**](EvaluationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer_portal_session

> <GetCustomerPortalSession200Response> get_customer_portal_session

Get Customer Portal Session

Returns a generated link to the Paddle Customer Portal

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Get Customer Portal Session
  result = api_instance.get_customer_portal_session
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_customer_portal_session: #{e}"
end
```

#### Using the get_customer_portal_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerPortalSession200Response>, Integer, Hash)> get_customer_portal_session_with_http_info

```ruby
begin
  # Get Customer Portal Session
  data, status_code, headers = api_instance.get_customer_portal_session_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerPortalSession200Response>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_customer_portal_session_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCustomerPortalSession200Response**](GetCustomerPortalSession200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_definition

> <Definition> get_definition(project_id, definition_id)

Get Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Definition
  result = api_instance.get_definition(project_id, definition_id)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_definition: #{e}"
end
```

#### Using the get_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Definition>, Integer, Hash)> get_definition_with_http_info(project_id, definition_id)

```ruby
begin
  # Get Definition
  data, status_code, headers = api_instance.get_definition_with_http_info(project_id, definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Definition>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_definition_by_xmlid

> <Definition> get_definition_by_xmlid(project_id, xml_definition_id, opts)

Get definition by XML definition ID

Get the latest version of a definition by its XML definition ID, or a specific version if provided

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
xml_definition_id = 'xml_definition_id_example' # String | The XML definition ID from the DMN model
opts = {
  version: 56 # Integer | Specific version number (defaults to latest version)
}

begin
  # Get definition by XML definition ID
  result = api_instance.get_definition_by_xmlid(project_id, xml_definition_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_definition_by_xmlid: #{e}"
end
```

#### Using the get_definition_by_xmlid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Definition>, Integer, Hash)> get_definition_by_xmlid_with_http_info(project_id, xml_definition_id, opts)

```ruby
begin
  # Get definition by XML definition ID
  data, status_code, headers = api_instance.get_definition_by_xmlid_with_http_info(project_id, xml_definition_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Definition>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_definition_by_xmlid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **xml_definition_id** | **String** | The XML definition ID from the DMN model |  |
| **version** | **Integer** | Specific version number (defaults to latest version) | [optional] |

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_execution

> <Execution> get_execution(project_id, execution_id)

Get Execution

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
execution_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Execution
  result = api_instance.get_execution(project_id, execution_id)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_execution: #{e}"
end
```

#### Using the get_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Execution>, Integer, Hash)> get_execution_with_http_info(project_id, execution_id)

```ruby
begin
  # Get Execution
  data, status_code, headers = api_instance.get_execution_with_http_info(project_id, execution_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Execution>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **execution_id** | **String** |  |  |

### Return type

[**Execution**](Execution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_frontend_config

> <FrontendConfig> get_frontend_config

Get Frontend Configuration

Returns configuration required by the frontend application (OIDC settings)

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Get Frontend Configuration
  result = api_instance.get_frontend_config
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_frontend_config: #{e}"
end
```

#### Using the get_frontend_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FrontendConfig>, Integer, Hash)> get_frontend_config_with_http_info

```ruby
begin
  # Get Frontend Configuration
  data, status_code, headers = api_instance.get_frontend_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FrontendConfig>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_frontend_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FrontendConfig**](FrontendConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_health

> <GetHealth200Response> get_health

Health Check

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Health Check
  result = api_instance.get_health
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_health: #{e}"
end
```

#### Using the get_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHealth200Response>, Integer, Hash)> get_health_with_http_info

```ruby
begin
  # Health Check
  data, status_code, headers = api_instance.get_health_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHealth200Response>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_health_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetHealth200Response**](GetHealth200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_limits

> <Quota> get_limits

Get Quota Limits

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Get Quota Limits
  result = api_instance.get_limits
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_limits: #{e}"
end
```

#### Using the get_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Quota>, Integer, Hash)> get_limits_with_http_info

```ruby
begin
  # Get Quota Limits
  data, status_code, headers = api_instance.get_limits_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Quota>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_limits_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Quota**](Quota.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_overview

> <OverviewResponse> get_overview

Get Overview Dashboard Data

Returns aggregated statistics for the overview dashboard including KPI charts and quota status.

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Get Overview Dashboard Data
  result = api_instance.get_overview
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_overview: #{e}"
end
```

#### Using the get_overview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OverviewResponse>, Integer, Hash)> get_overview_with_http_info

```ruby
begin
  # Get Overview Dashboard Data
  data, status_code, headers = api_instance.get_overview_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OverviewResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_overview_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OverviewResponse**](OverviewResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <Project> get_project(project_id)

Get Project

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Project
  result = api_instance.get_project(project_id)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> get_project_with_http_info(project_id)

```ruby
begin
  # Get Project
  data, status_code, headers = api_instance.get_project_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tier

> <Tier> get_tier(tier_id)

Get Tier

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
tier_id = 'tier_id_example' # String | 

begin
  # Get Tier
  result = api_instance.get_tier(tier_id)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_tier: #{e}"
end
```

#### Using the get_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tier>, Integer, Hash)> get_tier_with_http_info(tier_id)

```ruby
begin
  # Get Tier
  data, status_code, headers = api_instance.get_tier_with_http_info(tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tier>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier_id** | **String** |  |  |

### Return type

[**Tier**](Tier.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_permissions

> <UserPermissions> get_user_permissions

Get User Permissions

Returns the current user's global role and all project-level permissions

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Get User Permissions
  result = api_instance.get_user_permissions
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_user_permissions: #{e}"
end
```

#### Using the get_user_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserPermissions>, Integer, Hash)> get_user_permissions_with_http_info

```ruby
begin
  # Get User Permissions
  data, status_code, headers = api_instance.get_user_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserPermissions>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_user_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserPermissions**](UserPermissions.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_version

> <GetVersion200Response> get_version

Version

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # Version
  result = api_instance.get_version
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_version: #{e}"
end
```

#### Using the get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVersion200Response>, Integer, Hash)> get_version_with_http_info

```ruby
begin
  # Version
  data, status_code, headers = api_instance.get_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVersion200Response>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->get_version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetVersion200Response**](GetVersion200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_definition_versions

> <PaginatedDefinitionsResponse> list_definition_versions(project_id, definition_id, opts)

List all versions of a specific definition_id

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = 'definition_id_example' # String | 
opts = {
  page: 56, # Integer | Page number (1-indexed)
  page_size: 56 # Integer | Number of items per page (max 100)
}

begin
  # List all versions of a specific definition_id
  result = api_instance.list_definition_versions(project_id, definition_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_definition_versions: #{e}"
end
```

#### Using the list_definition_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDefinitionsResponse>, Integer, Hash)> list_definition_versions_with_http_info(project_id, definition_id, opts)

```ruby
begin
  # List all versions of a specific definition_id
  data, status_code, headers = api_instance.list_definition_versions_with_http_info(project_id, definition_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDefinitionsResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_definition_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **page** | **Integer** | Page number (1-indexed) | [optional][default to 1] |
| **page_size** | **Integer** | Number of items per page (max 100) | [optional][default to 20] |

### Return type

[**PaginatedDefinitionsResponse**](PaginatedDefinitionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_definitions

> <PaginatedDefinitionsResponse> list_definitions(project_id, opts)

List Definitions

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | Page number (1-indexed)
  page_size: 56 # Integer | Number of items per page (max 100)
}

begin
  # List Definitions
  result = api_instance.list_definitions(project_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_definitions: #{e}"
end
```

#### Using the list_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDefinitionsResponse>, Integer, Hash)> list_definitions_with_http_info(project_id, opts)

```ruby
begin
  # List Definitions
  data, status_code, headers = api_instance.list_definitions_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDefinitionsResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **page** | **Integer** | Page number (1-indexed) | [optional][default to 1] |
| **page_size** | **Integer** | Number of items per page (max 100) | [optional][default to 20] |

### Return type

[**PaginatedDefinitionsResponse**](PaginatedDefinitionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_executions

> <PaginatedExecutionsResponse> list_executions(project_id, definition_id, opts)

List Executions for Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  xml_definition_id: 'xml_definition_id_example', # String | Filter by XML Definition ID
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter executions after this date (ISO 8601)
  page: 56, # Integer | Page number (1-indexed)
  page_size: 56 # Integer | Number of items per page (max 100)
}

begin
  # List Executions for Definition
  result = api_instance.list_executions(project_id, definition_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_executions: #{e}"
end
```

#### Using the list_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedExecutionsResponse>, Integer, Hash)> list_executions_with_http_info(project_id, definition_id, opts)

```ruby
begin
  # List Executions for Definition
  data, status_code, headers = api_instance.list_executions_with_http_info(project_id, definition_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedExecutionsResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **xml_definition_id** | **String** | Filter by XML Definition ID | [optional] |
| **start_date** | **Time** | Filter executions after this date (ISO 8601) | [optional] |
| **page** | **Integer** | Page number (1-indexed) | [optional][default to 1] |
| **page_size** | **Integer** | Number of items per page (max 100) | [optional][default to 20] |

### Return type

[**PaginatedExecutionsResponse**](PaginatedExecutionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_latest_definitions

> <PaginatedDefinitionsResponse> list_latest_definitions(project_id, opts)

List Latest Definitions (one per definition_id)

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | Page number (1-indexed)
  page_size: 56 # Integer | Number of items per page (max 100)
}

begin
  # List Latest Definitions (one per definition_id)
  result = api_instance.list_latest_definitions(project_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_latest_definitions: #{e}"
end
```

#### Using the list_latest_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDefinitionsResponse>, Integer, Hash)> list_latest_definitions_with_http_info(project_id, opts)

```ruby
begin
  # List Latest Definitions (one per definition_id)
  data, status_code, headers = api_instance.list_latest_definitions_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDefinitionsResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_latest_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **page** | **Integer** | Page number (1-indexed) | [optional][default to 1] |
| **page_size** | **Integer** | Number of items per page (max 100) | [optional][default to 20] |

### Return type

[**PaginatedDefinitionsResponse**](PaginatedDefinitionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_project_executions

> <PaginatedExecutionsResponse> list_project_executions(project_id, opts)

List All Executions for Project

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  xml_definition_id: 'xml_definition_id_example', # String | Filter by XML Definition ID
  page: 56, # Integer | Page number (1-indexed)
  page_size: 56 # Integer | Number of items per page (max 100)
}

begin
  # List All Executions for Project
  result = api_instance.list_project_executions(project_id, opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_project_executions: #{e}"
end
```

#### Using the list_project_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedExecutionsResponse>, Integer, Hash)> list_project_executions_with_http_info(project_id, opts)

```ruby
begin
  # List All Executions for Project
  data, status_code, headers = api_instance.list_project_executions_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedExecutionsResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_project_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **xml_definition_id** | **String** | Filter by XML Definition ID | [optional] |
| **page** | **Integer** | Page number (1-indexed) | [optional][default to 1] |
| **page_size** | **Integer** | Number of items per page (max 100) | [optional][default to 20] |

### Return type

[**PaginatedExecutionsResponse**](PaginatedExecutionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_project_members

> <Array<ProjectMember>> list_project_members(project_id)

List Project Members

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # List Project Members
  result = api_instance.list_project_members(project_id)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_project_members: #{e}"
end
```

#### Using the list_project_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProjectMember>>, Integer, Hash)> list_project_members_with_http_info(project_id)

```ruby
begin
  # List Project Members
  data, status_code, headers = api_instance.list_project_members_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProjectMember>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_project_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**Array&lt;ProjectMember&gt;**](ProjectMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_projects

> <Array<Project>> list_projects

List Projects

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # List Projects
  result = api_instance.list_projects
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_projects: #{e}"
end
```

#### Using the list_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Project>>, Integer, Hash)> list_projects_with_http_info

```ruby
begin
  # List Projects
  data, status_code, headers = api_instance.list_projects_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Project>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_projects_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tiers

> <Array<Tier>> list_tiers

List Tiers

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new

begin
  # List Tiers
  result = api_instance.list_tiers
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_tiers: #{e}"
end
```

#### Using the list_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Tier>>, Integer, Hash)> list_tiers_with_http_info

```ruby
begin
  # List Tiers
  data, status_code, headers = api_instance.list_tiers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Tier>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_tiers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Tier&gt;**](Tier.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <Array<OrganizationUser>> list_users(opts)

List Organization Users

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
opts = {
  search: 'search_example' # String | Search by email or username
}

begin
  # List Organization Users
  result = api_instance.list_users(opts)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrganizationUser>>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List Organization Users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrganizationUser>>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search by email or username | [optional] |

### Return type

[**Array&lt;OrganizationUser&gt;**](OrganizationUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_project_member

> remove_project_member(project_id, user_id)

Remove Project Member

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove Project Member
  api_instance.remove_project_member(project_id, user_id)
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->remove_project_member: #{e}"
end
```

#### Using the remove_project_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_project_member_with_http_info(project_id, user_id)

```ruby
begin
  # Remove Project Member
  data, status_code, headers = api_instance.remove_project_member_with_http_info(project_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->remove_project_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_simulation

> <SimulationResponse> run_simulation(project_id, definition_id, simulation_request)

Run Simulation on Historical Data

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
simulation_request = Quantumdmn::SimulationRequest.new({xml: 'xml_example'}) # SimulationRequest | 

begin
  # Run Simulation on Historical Data
  result = api_instance.run_simulation(project_id, definition_id, simulation_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->run_simulation: #{e}"
end
```

#### Using the run_simulation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimulationResponse>, Integer, Hash)> run_simulation_with_http_info(project_id, definition_id, simulation_request)

```ruby
begin
  # Run Simulation on Historical Data
  data, status_code, headers = api_instance.run_simulation_with_http_info(project_id, definition_id, simulation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimulationResponse>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->run_simulation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **simulation_request** | [**SimulationRequest**](SimulationRequest.md) |  |  |

### Return type

[**SimulationResponse**](SimulationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customer_settings

> update_customer_settings(update_customer_settings_request)

Update Customer Settings

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
update_customer_settings_request = Quantumdmn::UpdateCustomerSettingsRequest.new # UpdateCustomerSettingsRequest | 

begin
  # Update Customer Settings
  api_instance.update_customer_settings(update_customer_settings_request)
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_customer_settings: #{e}"
end
```

#### Using the update_customer_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customer_settings_with_http_info(update_customer_settings_request)

```ruby
begin
  # Update Customer Settings
  data, status_code, headers = api_instance.update_customer_settings_with_http_info(update_customer_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_customer_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_customer_settings_request** | [**UpdateCustomerSettingsRequest**](UpdateCustomerSettingsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_definition

> <Definition> update_definition(project_id, definition_id, update_definition_request)

Update Definition

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
definition_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
update_definition_request = Quantumdmn::UpdateDefinitionRequest.new # UpdateDefinitionRequest | 

begin
  # Update Definition
  result = api_instance.update_definition(project_id, definition_id, update_definition_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_definition: #{e}"
end
```

#### Using the update_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Definition>, Integer, Hash)> update_definition_with_http_info(project_id, definition_id, update_definition_request)

```ruby
begin
  # Update Definition
  data, status_code, headers = api_instance.update_definition_with_http_info(project_id, definition_id, update_definition_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Definition>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **definition_id** | **String** |  |  |
| **update_definition_request** | [**UpdateDefinitionRequest**](UpdateDefinitionRequest.md) |  |  |

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_project_member_role

> <ProjectMember> update_project_member_role(project_id, user_id, update_project_member_role_request)

Update Project Member Role

### Examples

```ruby
require 'time'
require 'quantumdmn'

api_instance = Quantumdmn::DefaultApi.new
project_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
user_id = 'user_id_example' # String | 
update_project_member_role_request = Quantumdmn::UpdateProjectMemberRoleRequest.new({role: 'role_example'}) # UpdateProjectMemberRoleRequest | 

begin
  # Update Project Member Role
  result = api_instance.update_project_member_role(project_id, user_id, update_project_member_role_request)
  p result
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_project_member_role: #{e}"
end
```

#### Using the update_project_member_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectMember>, Integer, Hash)> update_project_member_role_with_http_info(project_id, user_id, update_project_member_role_request)

```ruby
begin
  # Update Project Member Role
  data, status_code, headers = api_instance.update_project_member_role_with_http_info(project_id, user_id, update_project_member_role_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectMember>
rescue Quantumdmn::ApiError => e
  puts "Error when calling DefaultApi->update_project_member_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **update_project_member_role_request** | [**UpdateProjectMemberRoleRequest**](UpdateProjectMemberRoleRequest.md) |  |  |

### Return type

[**ProjectMember**](ProjectMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

