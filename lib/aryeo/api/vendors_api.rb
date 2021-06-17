=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'cgi'

module Aryeo
  class VendorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get vendors available to a group.
    # Get vendors available to a group.
    # @param [Hash] opts the optional parameters
    # @return [GroupCollection]
    def get_vendors(opts = {})
      data, _status_code, _headers = get_vendors_with_http_info(opts)
      data
    end

    # Get vendors available to a group.
    # Get vendors available to a group.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupCollection, Integer, Hash)>] GroupCollection data, response status code and response headers
    def get_vendors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.get_vendors ...'
      end
      # resource path
      local_var_path = '/vendors'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"VendorsApi.get_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorsApi#get_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get vendors that can be added to the group's vendor list.
    # Get vendors that can be added to the group's vendor list, excluding those already available to a group. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query A search query.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [GroupCollection]
    def get_vendors_search(opts = {})
      data, _status_code, _headers = get_vendors_search_with_http_info(opts)
      data
    end

    # Get vendors that can be added to the group&#39;s vendor list.
    # Get vendors that can be added to the group&#39;s vendor list, excluding those already available to a group. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query A search query.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [Array<(GroupCollection, Integer, Hash)>] GroupCollection data, response status code and response headers
    def get_vendors_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.get_vendors_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"query"]" when calling VendorsApi.get_vendors_search, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"query"]" when calling VendorsApi.get_vendors_search, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling VendorsApi.get_vendors_search, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling VendorsApi.get_vendors_search, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling VendorsApi.get_vendors_search, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling VendorsApi.get_vendors_search, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/vendors/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"VendorsApi.get_vendors_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorsApi#get_vendors_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
