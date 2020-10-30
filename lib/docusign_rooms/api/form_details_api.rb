=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class FormDetailsApi
    attr_accessor :api_client

    def initialize(api_client = FormDetailsApi.default)
      @api_client = api_client
    end

    # Gets form based on Id.
    # 
    # @param form_id Form ID
    # @param account_id 
    # @return [FormDetails]
    def get_form_details(form_id, account_id)
      data, _status_code, _headers = get_form_details_with_http_info(form_id, account_id)
      return data
    end

    # Gets form based on Id.
    # 
    # @param form_id Form ID
    # @param account_id 
    # @return [Array<(FormDetails, Fixnum, Hash)>] FormDetails data, response status code and response headers
    def get_form_details_with_http_info(form_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FormDetailsApi.get_form_details ..."
      end
      # verify the required parameter 'form_id' is set
      fail ArgumentError, "Missing the required parameter 'form_id' when calling FormDetailsApi.get_form_details" if form_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling FormDetailsApi.get_form_details" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/forms/{formId}/details".sub('{format}','json').sub('{' + 'formId' + '}', form_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

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
        :return_type => 'FormDetails')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FormDetailsApi#get_form_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end