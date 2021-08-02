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
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [GroupCollection]
    def get_vendors(opts = {})
      data, _status_code, _headers = get_vendors_with_http_info(opts)
      data
    end

    # Get vendors available to a group.
    # Get vendors available to a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [Array<(GroupCollection, Integer, Hash)>] GroupCollection data, response status code and response headers
    def get_vendors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.get_vendors ...'
      end
      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling VendorsApi.get_vendors, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling VendorsApi.get_vendors, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/vendors'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

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
      auth_names = opts[:debug_auth_names] || ['Token']

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

    # Get vendors available to a group.
    # Get information about a vendor.
    # @param vendor_id [String] ID of the group that is associated as a vendor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [GroupResource]
    def get_vendors_id(vendor_id, opts = {})
      data, _status_code, _headers = get_vendors_id_with_http_info(vendor_id, opts)
      data
    end

    # Get vendors available to a group.
    # Get information about a vendor.
    # @param vendor_id [String] ID of the group that is associated as a vendor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [Array<(GroupResource, Integer, Hash)>] GroupResource data, response status code and response headers
    def get_vendors_id_with_http_info(vendor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.get_vendors_id ...'
      end
      # verify the required parameter 'vendor_id' is set
      if @api_client.config.client_side_validation && vendor_id.nil?
        fail ArgumentError, "Missing the required parameter 'vendor_id' when calling VendorsApi.get_vendors_id"
      end
      if @api_client.config.client_side_validation && vendor_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "vendor_id" when calling VendorsApi.get_vendors_id, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && vendor_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "vendor_id" when calling VendorsApi.get_vendors_id, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling VendorsApi.get_vendors_id, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling VendorsApi.get_vendors_id, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/vendors/{vendor_id}'.sub('{' + 'vendor_id' + '}', CGI.escape(vendor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"VendorsApi.get_vendors_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorsApi#get_vendors_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
