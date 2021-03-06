=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetRoleOptions
    # 
    attr_accessor :include_is_assigned

    def self.default
      @@default ||= GetRoleOptions.new
    end
  end

  class GetRolesOptions
    # 
    attr_accessor :only_assignable

    # 
    attr_accessor :filter

    # 
    attr_accessor :start_position

    # 
    attr_accessor :count

    def self.default
      @@default ||= GetRolesOptions.new
    end
  end


  class RolesApi
    attr_accessor :api_client

    def initialize(api_client = RolesApi.default)
      @api_client = api_client
    end

    # Creates a role.
    # 
    # @param account_id 
    # @param body  (optional parameter)
    # @return [Role]
    def create_role(account_id, body)
      data, _status_code, _headers = create_role_with_http_info(account_id,  body)
      return data
    end

    # Creates a role.
    # 
    # @param account_id 
    # @param body  (optional parameter)
    # @return [Array<(Role, Fixnum, Hash)>] Role data, response status code and response headers
    def create_role_with_http_info(account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RolesApi.create_role ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RolesApi.create_role" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/roles".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

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
        :return_type => 'Role')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @return [nil]
    def delete_role(role_id, account_id)
      delete_role_with_http_info(role_id, account_id)
      return nil
    end

    # Deletes the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RolesApi.delete_role ..."
      end
      # verify the required parameter 'role_id' is set
      fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.delete_role" if role_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RolesApi.delete_role" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/roles/{roleId}".sub('{format}','json').sub('{' + 'roleId' + '}', role_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

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
        @api_client.config.logger.debug "API called: RolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @param DocuSign_Rooms::GetRoleOptions Options for modifying the behavior of the function.
    # @return [Role]
    def get_role(role_id, account_id, options = DocuSign_Rooms::GetRoleOptions.default)
      data, _status_code, _headers = get_role_with_http_info(role_id, account_id, options)
      return data
    end

    # Get information about the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @param DocuSign_Rooms::GetRoleOptions Options for modifying the behavior of the function.
    # @return [Array<(Role, Fixnum, Hash)>] Role data, response status code and response headers
    def get_role_with_http_info(role_id, account_id, options = DocuSign_Rooms::GetRoleOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RolesApi.get_role ..."
      end
      # verify the required parameter 'role_id' is set
      fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.get_role" if role_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RolesApi.get_role" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/roles/{roleId}".sub('{format}','json').sub('{' + 'roleId' + '}', role_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'includeIsAssigned'] = options.include_is_assigned if !options.include_is_assigned.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

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
        :return_type => 'Role')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#get_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a paged-list of roles in your company
    # 
    # @param account_id 
    # @param DocuSign_Rooms::GetRolesOptions Options for modifying the behavior of the function.
    # @return [RoleSummaryList]
    def get_roles(account_id, options = DocuSign_Rooms::GetRolesOptions.default)
      data, _status_code, _headers = get_roles_with_http_info(account_id, options)
      return data
    end

    # Gets a paged-list of roles in your company
    # 
    # @param account_id 
    # @param DocuSign_Rooms::GetRolesOptions Options for modifying the behavior of the function.
    # @return [Array<(RoleSummaryList, Fixnum, Hash)>] RoleSummaryList data, response status code and response headers
    def get_roles_with_http_info(account_id, options = DocuSign_Rooms::GetRolesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RolesApi.get_roles ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RolesApi.get_roles" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/roles".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'onlyAssignable'] = options.only_assignable if !options.only_assignable.nil?
      query_params[:'filter'] = options.filter if !options.filter.nil?
      query_params[:'startPosition'] = options.start_position if !options.start_position.nil?
      query_params[:'count'] = options.count if !options.count.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

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
        :return_type => 'RoleSummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#get_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @param body  (optional parameter)
    # @return [Role]
    def update_role(role_id, account_id, body)
      data, _status_code, _headers = update_role_with_http_info(role_id, account_id,  body)
      return data
    end

    # Updates the role with the given roleId.
    # 
    # @param role_id 
    # @param account_id 
    # @param body  (optional parameter)
    # @return [Array<(Role, Fixnum, Hash)>] Role data, response status code and response headers
    def update_role_with_http_info(role_id, account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RolesApi.update_role ..."
      end
      # verify the required parameter 'role_id' is set
      fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.update_role" if role_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RolesApi.update_role" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/roles/{roleId}".sub('{format}','json').sub('{' + 'roleId' + '}', role_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Role')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end