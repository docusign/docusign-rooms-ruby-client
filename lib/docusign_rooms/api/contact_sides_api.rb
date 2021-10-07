=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class ContactSidesApi
    attr_accessor :api_client

    def initialize(api_client = ContactSidesApi.default)
      @api_client = api_client
    end

    # Retrieves the list of valid contact sides.
    # Returns a list of valid contact sides.
    # @return [GlobalContactSides]
    def get_contact_sides()
      data, _status_code, _headers = get_contact_sides_with_http_info()
      return data
    end

    # Retrieves the list of valid contact sides.
    # Returns a list of valid contact sides.
    # @return [Array<(GlobalContactSides, Fixnum, Hash)>] GlobalContactSides data, response status code and response headers
    def get_contact_sides_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactSidesApi.get_contact_sides ..."
      end
      # resource path
      local_var_path = "/v2/contact_sides".sub('{format}','json')

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalContactSides')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactSidesApi#get_contact_sides\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end