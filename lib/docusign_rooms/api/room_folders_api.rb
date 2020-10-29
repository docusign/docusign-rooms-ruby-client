=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetRoomFoldersOptions
    # Position of the first item in the total results. Defaults to 0.
    attr_accessor :start_position

    # Number of room folders to return. Defaults to the maximum which is 100.
    attr_accessor :count

    def self.default
      @@default ||= GetRoomFoldersOptions.new
    end
  end


  class RoomFoldersApi
    attr_accessor :api_client

    def initialize(api_client = RoomFoldersApi.default)
      @api_client = api_client
    end

    # Gets room folders accessible to the calling user.
    # 
    # @param room_id The room id from which to retrieve folders.
    # @param account_id 
    # @param DocuSign_Rooms::GetRoomFoldersOptions Options for modifying the behavior of the function.
    # @return [RoomFolderList]
    def get_room_folders(room_id, account_id, options = DocuSign_Rooms::GetRoomFoldersOptions.default)
      data, _status_code, _headers = get_room_folders_with_http_info(room_id, account_id, options)
      return data
    end

    # Gets room folders accessible to the calling user.
    # 
    # @param room_id The room id from which to retrieve folders.
    # @param account_id 
    # @param DocuSign_Rooms::GetRoomFoldersOptions Options for modifying the behavior of the function.
    # @return [Array<(RoomFolderList, Fixnum, Hash)>] RoomFolderList data, response status code and response headers
    def get_room_folders_with_http_info(room_id, account_id, options = DocuSign_Rooms::GetRoomFoldersOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RoomFoldersApi.get_room_folders ..."
      end
      # verify the required parameter 'room_id' is set
      fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomFoldersApi.get_room_folders" if room_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling RoomFoldersApi.get_room_folders" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/rooms/{roomId}/room_folders".sub('{format}','json').sub('{' + 'roomId' + '}', room_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'startPosition'] = options.start_position if !options.start_position.nil?
      query_params[:'count'] = options.count if !options.count.nil?

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
        :return_type => 'RoomFolderList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomFoldersApi#get_room_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end