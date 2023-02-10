=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class RoomEnvelopesApi
    attr_accessor :api_client

    def initialize(api_client = RoomEnvelopesApi.default)
      @api_client = api_client
    end

    # Creates an envelope with given documents. Returns the eSign envelope ID created
    # Creates an envelope with given documents. Returns the eSign envelope ID created
    # @param room_id Room ID
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param body Envelope Name and list of document IDs (optional parameter)
    # @return [Envelope]
    def create_room_envelope(room_id, account_id, body)
      data, _status_code, _headers = create_room_envelope_with_http_info(room_id, account_id,  body)
      return data
    end

    # Creates an envelope with given documents. Returns the eSign envelope ID created
    # Creates an envelope with given documents. Returns the eSign envelope ID created
    # @param room_id Room ID
    # @param account_id (Required) The globally unique identifier (GUID) for the account.
    # @param body Envelope Name and list of document IDs (optional parameter)
    # @return [Array<(Envelope, Fixnum, Hash)>] Envelope data, response status code and response headers
    def create_room_envelope_with_http_info(room_id, account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoomEnvelopesApi.create_room_envelope ..."
      end
      # verify the required parameter 'room_id' is set
      fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomEnvelopesApi.create_room_envelope" if room_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RoomEnvelopesApi.create_room_envelope" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/rooms/{roomId}/envelopes".sub('{format}','json').sub('{' + 'roomId' + '}', room_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Envelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomEnvelopesApi#create_room_envelope\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end