=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Aryeo::OrderPostPayload
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Aryeo::OrderPostPayload do
  let(:instance) { Aryeo::OrderPostPayload.new }

  describe 'test an instance of OrderPostPayload' do
    it 'should create an instance of OrderPostPayload' do
      expect(instance).to be_instance_of(Aryeo::OrderPostPayload)
    end
  end
  describe 'test attribute "fulfillment_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FULFILLED", "UNFULFILLED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.fulfillment_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "internal_notes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payment_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PAID", "UNPAID"])
      # validator.allowable_values.each do |value|
      #   expect { instance.payment_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "address_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "customer_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
