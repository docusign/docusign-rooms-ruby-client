=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms


  class TaskListsApi
    attr_accessor :api_client

    def initialize(api_client = TaskListsApi.default)
      @api_client = api_client
    end

    # Add a task list to a room based on a task list template.
    # 
    # @param room_id Room ID.
    # @param account_id 
    # @param body  (optional parameter)
    # @return [TaskList]
    def create_task_list(room_id, account_id, body)
      data, _status_code, _headers = create_task_list_with_http_info(room_id, account_id,  body)
      return data
    end

    # Add a task list to a room based on a task list template.
    # 
    # @param room_id Room ID.
    # @param account_id 
    # @param body  (optional parameter)
    # @return [Array<(TaskList, Fixnum, Hash)>] TaskList data, response status code and response headers
    def create_task_list_with_http_info(room_id, account_id, body)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaskListsApi.create_task_list ..."
      end
      # verify the required parameter 'room_id' is set
      fail ArgumentError, "Missing the required parameter 'room_id' when calling TaskListsApi.create_task_list" if room_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TaskListsApi.create_task_list" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/rooms/{roomId}/task_lists".sub('{format}','json').sub('{' + 'roomId' + '}', room_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'TaskList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaskListsApi#create_task_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a task list. If there are attached documents they will remain in the associated 
    # 
    # @param task_list_id Task List ID
    # @param account_id 
    # @return [nil]
    def delete_task_list(task_list_id, account_id)
      delete_task_list_with_http_info(task_list_id, account_id)
      return nil
    end

    # Deletes a task list. If there are attached documents they will remain in the associated 
    # 
    # @param task_list_id Task List ID
    # @param account_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_task_list_with_http_info(task_list_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaskListsApi.delete_task_list ..."
      end
      # verify the required parameter 'task_list_id' is set
      fail ArgumentError, "Missing the required parameter 'task_list_id' when calling TaskListsApi.delete_task_list" if task_list_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TaskListsApi.delete_task_list" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/task_lists/{taskListId}".sub('{format}','json').sub('{' + 'taskListId' + '}', task_list_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
        @api_client.config.logger.debug "API called: TaskListsApi#delete_task_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the summary for all viewable task lists in a 
    # 
    # @param room_id Room ID
    # @param account_id 
    # @return [TaskListSummaryList]
    def get_task_lists(room_id, account_id)
      data, _status_code, _headers = get_task_lists_with_http_info(room_id, account_id)
      return data
    end

    # Returns the summary for all viewable task lists in a 
    # 
    # @param room_id Room ID
    # @param account_id 
    # @return [Array<(TaskListSummaryList, Fixnum, Hash)>] TaskListSummaryList data, response status code and response headers
    def get_task_lists_with_http_info(room_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaskListsApi.get_task_lists ..."
      end
      # verify the required parameter 'room_id' is set
      fail ArgumentError, "Missing the required parameter 'room_id' when calling TaskListsApi.get_task_lists" if room_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TaskListsApi.get_task_lists" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/rooms/{roomId}/task_lists".sub('{format}','json').sub('{' + 'roomId' + '}', room_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'TaskListSummaryList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaskListsApi#get_task_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end