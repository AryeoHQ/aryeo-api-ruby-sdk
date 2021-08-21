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
    # List all listings.
    # Lists all listings available to a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [String] :filter_search Return listings that have fields matching this term.
    # @option opts [String] :filter_address Return listings that have an address matching this term.
    # @option opts [String] :filter_list_agent Return listings that have a listing agent or co-listing agent matching this term.
    # @option opts [String] :filter_status Return listings that have a certain status.
    # @option opts [Boolean] :filter_active Set as true to return listings that have an active status (e.g. active statuses include &#x60;COMING_SOON&#x60;, &#x60;FOR_SALE&#x60;, &#x60;FOR_LEASE&#x60;, &#x60;PENDING_SALE&#x60;, &#x60;PENDING_LEASE&#x60;, &#x60;SOLD&#x60;, &#x60;LEASED&#x60;). 
    # @option opts [Float] :filter_price_gte Return listings where the price field is greater than or equal to this value.
    # @option opts [Float] :filter_price_lte Return listings where the price field is less than or equal to this value.
    # @option opts [Float] :filter_square_feet_gte Return listings where the square feet field is greater than or equal to this value.
    # @option opts [Float] :filter_square_feet_lte Return listings where the square feet field is less than or equal to this value.
    # @option opts [Integer] :filter_bedrooms_gte Return listings where the bedrooms field is greater than or equal to this value.
    # @option opts [Integer] :filter_bedrooms_lte Return listings where the bedrooms field is less than or equal to this value.
    # @option opts [Float] :filter_bathrooms_gte Return listings where the bathrooms field is greater than or equal to this value.
    # @option opts [Float] :filter_bathrooms_lte Return listings where the bathrooms field is less than or equal to this value.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [ListingCollection]
    def get_listings(opts = {})
      data, _status_code, _headers = get_listings_with_http_info(opts)
      data
    end

    # List all listings.
    # Lists all listings available to a group.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [String] :filter_search Return listings that have fields matching this term.
    # @option opts [String] :filter_address Return listings that have an address matching this term.
    # @option opts [String] :filter_list_agent Return listings that have a listing agent or co-listing agent matching this term.
    # @option opts [String] :filter_status Return listings that have a certain status.
    # @option opts [Boolean] :filter_active Set as true to return listings that have an active status (e.g. active statuses include &#x60;COMING_SOON&#x60;, &#x60;FOR_SALE&#x60;, &#x60;FOR_LEASE&#x60;, &#x60;PENDING_SALE&#x60;, &#x60;PENDING_LEASE&#x60;, &#x60;SOLD&#x60;, &#x60;LEASED&#x60;). 
    # @option opts [Float] :filter_price_gte Return listings where the price field is greater than or equal to this value.
    # @option opts [Float] :filter_price_lte Return listings where the price field is less than or equal to this value.
    # @option opts [Float] :filter_square_feet_gte Return listings where the square feet field is greater than or equal to this value.
    # @option opts [Float] :filter_square_feet_lte Return listings where the square feet field is less than or equal to this value.
    # @option opts [Integer] :filter_bedrooms_gte Return listings where the bedrooms field is greater than or equal to this value.
    # @option opts [Integer] :filter_bedrooms_lte Return listings where the bedrooms field is less than or equal to this value.
    # @option opts [Float] :filter_bathrooms_gte Return listings where the bathrooms field is greater than or equal to this value.
    # @option opts [Float] :filter_bathrooms_lte Return listings where the bathrooms field is less than or equal to this value.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [Array<(ListingCollection, Integer, Hash)>] ListingCollection data, response status code and response headers
    def get_listings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings ...'
      end
      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_search'].nil? && opts[:'filter_search'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"filter_search"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_search'].nil? && opts[:'filter_search'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_search"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_address'].nil? && opts[:'filter_address'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"filter_address"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_address'].nil? && opts[:'filter_address'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_address"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_list_agent'].nil? && opts[:'filter_list_agent'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"filter_list_agent"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_list_agent'].nil? && opts[:'filter_list_agent'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_list_agent"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      allowable_values = ["DRAFT", "COMING_SOON", "FOR_LEASE", "FOR_SALE", "PENDING_SALE", "PENDING_LEASE", "SOLD", "LEASED", "OFF_MARKET", "null"]
      if @api_client.config.client_side_validation && opts[:'filter_status'] && !allowable_values.include?(opts[:'filter_status'])
        fail ArgumentError, "invalid value for \"filter_status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'filter_status'].nil? && opts[:'filter_status'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"filter_status"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_status'].nil? && opts[:'filter_status'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_status"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_active'].nil? && opts[:'filter_active'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"filter_active"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_active'].nil? && opts[:'filter_active'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"filter_active"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling ListingsApi.get_listings, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling ListingsApi.get_listings, the character length must be great than or equal to 1.'
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

      # resource path
      local_var_path = '/listings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[search]'] = opts[:'filter_search'] if !opts[:'filter_search'].nil?
      query_params[:'filter[address]'] = opts[:'filter_address'] if !opts[:'filter_address'].nil?
      query_params[:'filter[list_agent]'] = opts[:'filter_list_agent'] if !opts[:'filter_list_agent'].nil?
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?
      query_params[:'filter[active]'] = opts[:'filter_active'] if !opts[:'filter_active'].nil?
      query_params[:'filter[price_gte]'] = opts[:'filter_price_gte'] if !opts[:'filter_price_gte'].nil?
      query_params[:'filter[price_lte]'] = opts[:'filter_price_lte'] if !opts[:'filter_price_lte'].nil?
      query_params[:'filter[square_feet_gte]'] = opts[:'filter_square_feet_gte'] if !opts[:'filter_square_feet_gte'].nil?
      query_params[:'filter[square_feet_lte]'] = opts[:'filter_square_feet_lte'] if !opts[:'filter_square_feet_lte'].nil?
      query_params[:'filter[bedrooms_gte]'] = opts[:'filter_bedrooms_gte'] if !opts[:'filter_bedrooms_gte'].nil?
      query_params[:'filter[bedrooms_lte]'] = opts[:'filter_bedrooms_lte'] if !opts[:'filter_bedrooms_lte'].nil?
      query_params[:'filter[bathrooms_gte]'] = opts[:'filter_bathrooms_gte'] if !opts[:'filter_bathrooms_gte'].nil?
      query_params[:'filter[bathrooms_lte]'] = opts[:'filter_bathrooms_lte'] if !opts[:'filter_bathrooms_lte'].nil?
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
      return_type = opts[:debug_return_type] || 'ListingCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

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

    # Retrieve a listing.
    # Retrieves the details of a listing with the given ID.
    # @param listing_id [String] The ID of a listing. UUID Version 4.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [ListingResource]
    def get_listings_id(listing_id, opts = {})
      data, _status_code, _headers = get_listings_id_with_http_info(listing_id, opts)
      data
    end

    # Retrieve a listing.
    # Retrieves the details of a listing with the given ID.
    # @param listing_id [String] The ID of a listing. UUID Version 4.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @return [Array<(ListingResource, Integer, Hash)>] ListingResource data, response status code and response headers
    def get_listings_id_with_http_info(listing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings_id ...'
      end
      # verify the required parameter 'listing_id' is set
      if @api_client.config.client_side_validation && listing_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_id' when calling ListingsApi.get_listings_id"
      end
      if @api_client.config.client_side_validation && listing_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "listing_id" when calling ListingsApi.get_listings_id, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && listing_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "listing_id" when calling ListingsApi.get_listings_id, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling ListingsApi.get_listings_id, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling ListingsApi.get_listings_id, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/listings/{listing_id}'.sub('{' + 'listing_id' + '}', CGI.escape(listing_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

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
