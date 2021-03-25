=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class ActivityTypesApi
    attr_accessor :api_client

    def initialize(api_client = ActivityTypesApi.default)
      @api_client = api_client
    end

    # Retrieves the list of valid activity types.
    # 
    # @return [GlobalActivityTypes]
    def get_activity_types()
      data, _status_code, _headers = get_activity_types_with_http_info()
      return data
    end

    # Retrieves the list of valid activity types.
    # 
    # @return [Array<(GlobalActivityTypes, Fixnum, Hash)>] GlobalActivityTypes data, response status code and response headers
    def get_activity_types_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivityTypesApi.get_activity_types ..."
      end
      # resource path
      local_var_path = "/v2/activity_types".sub('{format}','json')

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
        :return_type => 'GlobalActivityTypes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityTypesApi#get_activity_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end