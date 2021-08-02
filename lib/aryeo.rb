=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

# Common files
require 'aryeo/api_client'
require 'aryeo/api_error'
require 'aryeo/version'
require 'aryeo/configuration'

# Models
require 'aryeo/models/address'
require 'aryeo/models/api_error'
require 'aryeo/models/api_fail'
require 'aryeo/models/floor_plan'
require 'aryeo/models/group'
require 'aryeo/models/group_collection'
require 'aryeo/models/group_resource'
require 'aryeo/models/image'
require 'aryeo/models/interactive_content'
require 'aryeo/models/listing'
require 'aryeo/models/listing_building'
require 'aryeo/models/listing_collection'
require 'aryeo/models/listing_lot'
require 'aryeo/models/listing_price'
require 'aryeo/models/listing_resource'
require 'aryeo/models/order'
require 'aryeo/models/order_collection'
require 'aryeo/models/order_form'
require 'aryeo/models/order_post_payload'
require 'aryeo/models/order_resource'
require 'aryeo/models/pagination_links'
require 'aryeo/models/pagination_meta'
require 'aryeo/models/property_website'
require 'aryeo/models/social_profiles'
require 'aryeo/models/user'
require 'aryeo/models/video'

# APIs
require 'aryeo/api/listings_api'
require 'aryeo/api/orders_api'
require 'aryeo/api/vendors_api'

module Aryeo
  class << self
    # Customize default settings for the SDK using block.
    #   Aryeo.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
