=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Aryeo::MarketingMaterialsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MarketingMaterialsApi' do
  before do
    # run before each test
    @api_instance = Aryeo::MarketingMaterialsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketingMaterialsApi' do
    it 'should create an instance of MarketingMaterialsApi' do
      expect(@api_instance).to be_instance_of(Aryeo::MarketingMaterialsApi)
    end
  end

  # unit tests for put_marketing_materials_uuid_publish
  # Publish a marketing material.
  # Publish a marketing material.
  # @param uuid UUID of the marketing material record.
  # @param [Hash] opts the optional parameters
  # @option opts [MarketingMaterialPublishPayload] :marketing_material_publish_payload 
  # @return [nil]
  describe 'put_marketing_materials_uuid_publish test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end