=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Aryeo::OrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @api_instance = Aryeo::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@api_instance).to be_instance_of(Aryeo::OrdersApi)
    end
  end

  # unit tests for get_orders
  # List all orders.
  # Lists all orders of a group.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;.
  # @option opts [String] :per_page The number of items per page. Defaults to 25.
  # @option opts [String] :page The requested page. Defaults to 1.
  # @return [OrderCollection]
  describe 'get_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_products
  # Get products available to a group.
  # Get products of a group.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;title&#x60;.
  # @option opts [String] :per_page The number of items per page. Defaults to 25.
  # @option opts [String] :page The requested page. Defaults to 1.
  # @option opts [String] :filter_search Return products that have fields matching this term.
  # @option opts [String] :filter_category_ids Return products in the given categories.
  # @option opts [String] :filter_type Return products matching the given type. Allowed values are: MAIN, ADDON.
  # @return [ProductCollection]
  describe 'get_products test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_orders
  # Create an order.
  # Create an order.
  # @param [Hash] opts the optional parameters
  # @option opts [OrderPostPayload] :order_post_payload OrderPostPayload
  # @return [OrderResource]
  describe 'post_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
