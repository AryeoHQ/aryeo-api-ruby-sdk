=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'cgi'

module Aryeo
  class ListingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the listings available to a group.
    # Get the listings available to a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query A search query.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @option opts [String] :status The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
    # @option opts [Integer] :price The price value and greater will be returned.
    # @option opts [Float] :bathrooms Number of bathrooms minimum.
    # @option opts [Integer] :bedrooms Number of bedrooms minimum.
    # @return [PartialListingCollection]
    def get_listings(opts = {})
      data, _status_code, _headers = get_listings_with_http_info(opts)
      data
    end

    # Get the listings available to a group.
    # Get the listings available to a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query A search query.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @option opts [String] :status The status you want to scope down to, example sold,  coming_soon,  for_sale, sold
    # @option opts [Integer] :price The price value and greater will be returned.
    # @option opts [Float] :bathrooms Number of bathrooms minimum.
    # @option opts [Integer] :bedrooms Number of bedrooms minimum.
    # @return [Array<(PartialListingCollection, Integer, Hash)>] PartialListingCollection data, response status code and response headers
    def get_listings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings ...'
      end
      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"query"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"query"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      allowable_values = ["off_market", "pending_lease", "vacation_rental", "leased", "for_sale", "draft", "coming_soon", "soldm", "null", "for_lease", "pending_sale", "price_reduction", "sold"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'status'].nil? && opts[:'status'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"status"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'status'].nil? && opts[:'status'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"status"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/listings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'price'] = opts[:'price'] if !opts[:'price'].nil?
      query_params[:'bathrooms'] = opts[:'bathrooms'] if !opts[:'bathrooms'].nil?
      query_params[:'bedrooms'] = opts[:'bedrooms'] if !opts[:'bedrooms'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PartialListingCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about a listing.
    # Get information about a listing.
    # @param id [String] The UUID of a listing.
    # @param [Hash] opts the optional parameters
    # @return [ListingResource]
    def get_listings_id(id, opts = {})
      data, _status_code, _headers = get_listings_id_with_http_info(id, opts)
      data
    end

    # Get information about a listing.
    # Get information about a listing.
    # @param id [String] The UUID of a listing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingResource, Integer, Hash)>] ListingResource data, response status code and response headers
    def get_listings_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListingsApi.get_listings_id"
      end
      if @api_client.config.client_side_validation && id.to_s.length > 255
        fail ArgumentError, 'invalid value for "id" when calling ListingsApi.get_listings_id, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && id.to_s.length < 0
        fail ArgumentError, 'invalid value for "id" when calling ListingsApi.get_listings_id, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/listings/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JWT']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listings_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listings_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
