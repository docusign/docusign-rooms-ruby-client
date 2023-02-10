=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetOfficesOptions
    # Number of offices to include in the response, (Default 100)
    attr_accessor :count

    # Position in the overall list of offices to begin results.
    attr_accessor :start_position

    # When true, the response only includes offices accessible to the calling user.
    attr_accessor :only_accessible

    # When specified, the response only includes offices whose names includes the specified search string.
    attr_accessor :search

    def self.default
      @@default ||= GetOfficesOptions.new
    end
  end


  class OfficesApi
    attr_accessor :api_client

    def initialize(api_client = OfficesApi.default)
      @api_client = api_client
    end

    # Create an office.
    # Create an office.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param body Creates an office with given name and other details like Region,Address (optional parameter)
    # @return [Office]
    def create_office(account_id, body)
      data, _status_code, _headers = create_office_with_http_info(account_id,  body)
      return data
    end

    # Create an office.
    # Create an office.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param body Creates an office with given name and other details like Region,Address (optional parameter)
    # @return [Array<(Office, Fixnum, Hash)>] Office data, response status code and response headers
    def create_office_with_http_info(account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfficesApi.create_office ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling OfficesApi.create_office" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/offices".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json', 'application/xml', 'text/xml', 'application/*+xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Office')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#create_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an office.
    # This method deletes an office from a Rooms account.
    # @param office_id Office ID to be deleted
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [nil]
    def delete_office(office_id, account_id)
      delete_office_with_http_info(office_id, account_id)
      return nil
    end

    # Delete an office.
    # This method deletes an office from a Rooms account.
    # @param office_id Office ID to be deleted
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_office_with_http_info(office_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfficesApi.delete_office ..."
      end
      # verify the required parameter 'office_id' is set
      fail ArgumentError, "Missing the required parameter 'office_id' when calling OfficesApi.delete_office" if office_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling OfficesApi.delete_office" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/offices/{officeId}".sub('{format}','json').sub('{' + 'officeId' + '}', office_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#delete_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about the office with the given officeId.
    # Get information about the office with the given officeId.
    # @param office_id The id of the office.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [Office]
    def get_office(office_id, account_id)
      data, _status_code, _headers = get_office_with_http_info(office_id, account_id)
      return data
    end

    # Get information about the office with the given officeId.
    # Get information about the office with the given officeId.
    # @param office_id The id of the office.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [Array<(Office, Fixnum, Hash)>] Office data, response status code and response headers
    def get_office_with_http_info(office_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfficesApi.get_office ..."
      end
      # verify the required parameter 'office_id' is set
      fail ArgumentError, "Missing the required parameter 'office_id' when calling OfficesApi.get_office" if office_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling OfficesApi.get_office" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/offices/{officeId}".sub('{format}','json').sub('{' + 'officeId' + '}', office_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Office')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#get_office\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all offices.
    # This method returns a list of offices associated with an account.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetOfficesOptions Options for modifying the behavior of the function.
    # @return [OfficeSummaryList]
    def get_offices(account_id, options = DocuSign_Rooms::GetOfficesOptions.default)
      data, _status_code, _headers = get_offices_with_http_info(account_id, options)
      return data
    end

    # Get all offices.
    # This method returns a list of offices associated with an account.
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param DocuSign_Rooms::GetOfficesOptions Options for modifying the behavior of the function.
    # @return [Array<(OfficeSummaryList, Fixnum, Hash)>] OfficeSummaryList data, response status code and response headers
    def get_offices_with_http_info(account_id, options = DocuSign_Rooms::GetOfficesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfficesApi.get_offices ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling OfficesApi.get_offices" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/offices".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'startPosition'] = options.start_position if !options.start_position.nil?
      query_params[:'onlyAccessible'] = options.only_accessible if !options.only_accessible.nil?
      query_params[:'search'] = options.search if !options.search.nil?

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
        :return_type => 'OfficeSummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#get_offices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists the number of objects of each type that reference the office.
    # This method returns a list of each type of object and the number of objects of that type referencing the specified office. Note that an office cannot be deleted while existing objects reference it.
    # @param office_id ID of the office
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [OfficeReferenceCountList]
    def get_reference_counts(office_id, account_id)
      data, _status_code, _headers = get_reference_counts_with_http_info(office_id, account_id)
      return data
    end

    # Lists the number of objects of each type that reference the office.
    # This method returns a list of each type of object and the number of objects of that type referencing the specified office. Note that an office cannot be deleted while existing objects reference it.
    # @param office_id ID of the office
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @return [Array<(OfficeReferenceCountList, Fixnum, Hash)>] OfficeReferenceCountList data, response status code and response headers
    def get_reference_counts_with_http_info(office_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OfficesApi.get_reference_counts ..."
      end
      # verify the required parameter 'office_id' is set
      fail ArgumentError, "Missing the required parameter 'office_id' when calling OfficesApi.get_reference_counts" if office_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling OfficesApi.get_reference_counts" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/offices/{officeId}/reference_counts".sub('{format}','json').sub('{' + 'officeId' + '}', office_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'OfficeReferenceCountList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfficesApi#get_reference_counts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end