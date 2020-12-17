=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class TaskResponsibilityTypesApi
    attr_accessor :api_client

    def initialize(api_client = TaskResponsibilityTypesApi.default)
      @api_client = api_client
    end

    # Retrieves the list of valid task responsibility types.
    # 
    # @return [GlobalTaskResponsibilityTypes]
    def get_task_responsibility_types()
      data, _status_code, _headers = get_task_responsibility_types_with_http_info()
      return data
    end

    # Retrieves the list of valid task responsibility types.
    # 
    # @return [Array<(GlobalTaskResponsibilityTypes, Fixnum, Hash)>] GlobalTaskResponsibilityTypes data, response status code and response headers
    def get_task_responsibility_types_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaskResponsibilityTypesApi.get_task_responsibility_types ..."
      end
      # resource path
      local_var_path = "/v2/task_responsibility_types".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalTaskResponsibilityTypes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaskResponsibilityTypesApi#get_task_responsibility_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end