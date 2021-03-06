=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Rooms

  class GetTaskListTemplatesOptions
    # 
    attr_accessor :start_position

    # 
    attr_accessor :count

    def self.default
      @@default ||= GetTaskListTemplatesOptions.new
    end
  end


  class TaskListTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = TaskListTemplatesApi.default)
      @api_client = api_client
    end

    # Returns all task list templates for the company of the active user.
    # 
    # @param account_id 
    # @param DocuSign_Rooms::GetTaskListTemplatesOptions Options for modifying the behavior of the function.
    # @return [TaskListTemplateList]
    def get_task_list_templates(account_id, options = DocuSign_Rooms::GetTaskListTemplatesOptions.default)
      data, _status_code, _headers = get_task_list_templates_with_http_info(account_id, options)
      return data
    end

    # Returns all task list templates for the company of the active user.
    # 
    # @param account_id 
    # @param DocuSign_Rooms::GetTaskListTemplatesOptions Options for modifying the behavior of the function.
    # @return [Array<(TaskListTemplateList, Fixnum, Hash)>] TaskListTemplateList data, response status code and response headers
    def get_task_list_templates_with_http_info(account_id, options = DocuSign_Rooms::GetTaskListTemplatesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaskListTemplatesApi.get_task_list_templates ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TaskListTemplatesApi.get_task_list_templates" if account_id.nil?
      # resource path
      local_var_path = "/v2/accounts/{accountId}/task_list_templates".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'TaskListTemplateList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaskListTemplatesApi#get_task_list_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end