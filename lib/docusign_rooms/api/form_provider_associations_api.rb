=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetFormProviderAssociationsOptions
    # Total number of associations to be returned
    attr_accessor :count

    # starting position of the list
    attr_accessor :start_position

    def self.default
      @@default ||= GetFormProviderAssociationsOptions.new
    end
  end


  class FormProviderAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = FormProviderAssociationsApi.default)
      @api_client = api_client
    end

    # Retrieves all Associations by provider
    # Retrieves all Associations for given provider
    # @param provider_id provider id like nar, nwmls etc..
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormProviderAssociationsOptions Options for modifying the behavior of the function.
    # @return [FormProviderAssociationsSummaryList]
    def get_form_provider_associations(provider_id, account_id, options = DocuSign_Rooms::GetFormProviderAssociationsOptions.default)
      data, _status_code, _headers = get_form_provider_associations_with_http_info(provider_id, account_id, options)
      return data
    end

    # Retrieves all Associations by provider
    # Retrieves all Associations for given provider
    # @param provider_id provider id like nar, nwmls etc..
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormProviderAssociationsOptions Options for modifying the behavior of the function.
    # @return [Array<(FormProviderAssociationsSummaryList, Fixnum, Hash)>] FormProviderAssociationsSummaryList data, response status code and response headers
    def get_form_provider_associations_with_http_info(provider_id, account_id, options = DocuSign_Rooms::GetFormProviderAssociationsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FormProviderAssociationsApi.get_form_provider_associations ..."
      end
      # verify the required parameter 'provider_id' is set
      fail ArgumentError, "Missing the required parameter 'provider_id' when calling FormProviderAssociationsApi.get_form_provider_associations" if provider_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FormProviderAssociationsApi.get_form_provider_associations" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/form_providers/{providerId}/associations".sub('{format}','json').sub('{' + 'providerId' + '}', provider_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'startPosition'] = options.start_position if !options.start_position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FormProviderAssociationsSummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FormProviderAssociationsApi#get_form_provider_associations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end