=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetFormLibrariesOptions
    # Default value is 100 and max value is 100
    attr_accessor :count

    # Default value is 0
    attr_accessor :start_position

    def self.default
      @@default ||= GetFormLibrariesOptions.new
    end
  end

  class GetFormLibraryFormsOptions
    # Default value is 100 and max value is 100
    attr_accessor :count

    # Default value is 0
    attr_accessor :start_position

    def self.default
      @@default ||= GetFormLibraryFormsOptions.new
    end
  end


  class FormLibrariesApi
    attr_accessor :api_client

    def initialize(api_client = FormLibrariesApi.default)
      @api_client = api_client
    end

    # Gets a paged list of forms libraries.
    # Returns a list of form libraries to which the current user has access.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormLibrariesOptions Options for modifying the behavior of the function.
    # @return [FormLibrarySummaryList]
    def get_form_libraries(account_id, options = DocuSign_Rooms::GetFormLibrariesOptions.default)
      data, _status_code, _headers = get_form_libraries_with_http_info(account_id, options)
      return data
    end

    # Gets a paged list of forms libraries.
    # Returns a list of form libraries to which the current user has access.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormLibrariesOptions Options for modifying the behavior of the function.
    # @return [Array<(FormLibrarySummaryList, Fixnum, Hash)>] FormLibrarySummaryList data, response status code and response headers
    def get_form_libraries_with_http_info(account_id, options = DocuSign_Rooms::GetFormLibrariesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FormLibrariesApi.get_form_libraries ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FormLibrariesApi.get_form_libraries" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/form_libraries".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'FormLibrarySummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FormLibrariesApi#get_form_libraries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a paged list of forms in a forms library.
    # Returns a list of forms  to which the current user has access in the specified form library.
    # @param form_library_id Library Id
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormLibraryFormsOptions Options for modifying the behavior of the function.
    # @return [FormSummaryList]
    def get_form_library_forms(form_library_id, account_id, options = DocuSign_Rooms::GetFormLibraryFormsOptions.default)
      data, _status_code, _headers = get_form_library_forms_with_http_info(form_library_id, account_id, options)
      return data
    end

    # Gets a paged list of forms in a forms library.
    # Returns a list of forms  to which the current user has access in the specified form library.
    # @param form_library_id Library Id
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetFormLibraryFormsOptions Options for modifying the behavior of the function.
    # @return [Array<(FormSummaryList, Fixnum, Hash)>] FormSummaryList data, response status code and response headers
    def get_form_library_forms_with_http_info(form_library_id, account_id, options = DocuSign_Rooms::GetFormLibraryFormsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FormLibrariesApi.get_form_library_forms ..."
      end
      # verify the required parameter 'form_library_id' is set
      fail ArgumentError, "Missing the required parameter 'form_library_id' when calling FormLibrariesApi.get_form_library_forms" if form_library_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FormLibrariesApi.get_form_library_forms" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/form_libraries/{formLibraryId}/forms".sub('{format}','json').sub('{' + 'formLibraryId' + '}', form_library_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'FormSummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FormLibrariesApi#get_form_library_forms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end