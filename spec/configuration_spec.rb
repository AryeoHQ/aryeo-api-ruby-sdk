=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'

describe Aryeo::Configuration do
  let(:config) { Aryeo::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.aryeo.com/v1")
    # Aryeo.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.aryeo.com/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.aryeo.com/v1")
      end
    end
  end
end
