# frozen_string_literal: true

module Quantumdmn
  # high-level wrapper for DMN engine evaluation
  # simplifies interaction with the API by providing a clean evaluate method
  class DmnEngine
    attr_reader :api, :project_id

    # initialize the DMN engine client
    # @param api_client [ApiClient] configured API client with authentication
    # @param project_id [String] DMN project UUID
    def initialize(api_client, project_id)
      @api = DefaultApi.new(api_client)
      @project_id = project_id
    end

    # evaluate a DMN definition
    # automatically detects whether definition_id is a UUID or XML ID
    # @param definition_id [String] UUID or XML definition ID
    # @param context [Hash] evaluation context with native Ruby types
    # @param version [Integer, nil] optional version number (defaults to latest)
    # @return [Hash] evaluation results as Hash of decision name => EvaluationResult
    def evaluate(definition_id, context, version: nil)
      # prepare request body (don't include version in request - it goes in opts)
      request_body = EvaluateStoredRequest.new(context: context)

      # detect if definition_id is a UUID (36 chars with dashes) or XML ID
      if uuid?(definition_id)
        # use UUID endpoint
        @api.evaluate_stored(@project_id, definition_id, request_body)
      else
        # use XML ID endpoint - version goes in opts hash
        opts = version ? { version: version } : {}
        @api.evaluate_by_xmlid(@project_id, definition_id, request_body, opts)
      end
    end

    private

    # check if string looks like a UUID
    def uuid?(str)
      str.match?(/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i)
    end
  end
end
