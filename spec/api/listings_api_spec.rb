=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Aryeo::ListingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ListingsApi' do
  before do
    # run before each test
    @api_instance = Aryeo::ListingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListingsApi' do
    it 'should create an instance of ListingsApi' do
      expect(@api_instance).to be_instance_of(Aryeo::ListingsApi)
    end
  end

  # unit tests for get_listings
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
  describe 'get_listings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_listings_id
  # Get information about a listing.
  # Get information about a listing.
  # @param uuid The UUID of a listing.
  # @param [Hash] opts the optional parameters
  # @return [ListingResource]
  describe 'get_listings_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
