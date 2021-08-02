=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'cgi'

module Aryeo
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get orders available to a group.
    # Get orders of a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [OrderCollection]
    def get_orders(opts = {})
      data, _status_code, _headers = get_orders_with_http_info(opts)
      data
    end

    # Get orders available to a group.
    # Get orders of a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [Array<(OrderCollection, Integer, Hash)>] OrderCollection data, response status code and response headers
    def get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_orders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling OrdersApi.get_orders, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling OrdersApi.get_orders, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling OrdersApi.get_orders, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling OrdersApi.get_orders, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling OrdersApi.get_orders, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling OrdersApi.get_orders, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
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
      return_type = opts[:debug_return_type] || 'OrderCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"OrdersApi.get_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an order.
    # Create an order.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderPostPayload] :order_post_payload OrderPostPayload
    # @return [OrderResource]
    def post_orders(opts = {})
      data, _status_code, _headers = post_orders_with_http_info(opts)
      data
    end

    # Create an order.
    # Create an order.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderPostPayload] :order_post_payload OrderPostPayload
    # @return [Array<(OrderResource, Integer, Hash)>] OrderResource data, response status code and response headers
    def post_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.post_orders ...'
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'order_post_payload'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"OrdersApi.post_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#post_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
