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
    # @return [OrderCollection]
    def get_orders(opts = {})
      data, _status_code, _headers = get_orders_with_http_info(opts)
      data
    end

    # Get orders available to a group.
    # Get orders of a group.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderCollection, Integer, Hash)>] OrderCollection data, response status code and response headers
    def get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_orders ...'
      end
      # resource path
      local_var_path = '/orders'

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
      return_type = opts[:debug_return_type] || 'OrderCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

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
    # @option opts [OrderPostPayload] :order_post_payload 
    # @return [OrderResource]
    def post_orders(opts = {})
      data, _status_code, _headers = post_orders_with_http_info(opts)
      data
    end

    # Create an order.
    # Create an order.
    # @param [Hash] opts the optional parameters
    # @option opts [OrderPostPayload] :order_post_payload 
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
      auth_names = opts[:debug_auth_names] || ['JWT']

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
