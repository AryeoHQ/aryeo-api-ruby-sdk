=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A real estate listing.
  class Listing
    # ID of the listing.
    attr_accessor :id

    attr_accessor :address

    # The identifier for a listing on its local MLS. 
    attr_accessor :mls_number

    # General type of the listing, primarily categorizing its use case. Examples include residential and commercial. 
    attr_accessor :type

    # Further specifies the listing type. Examples include family residence and condominium.
    attr_accessor :sub_type

    # Local, regional, or otherwise custom status for the listing used by the parties involved in the listing transaction. While variable, these statuses are typically mapped to the listing's standard status.
    attr_accessor :status

    # The status of the listing as it reflects the state of the contract between the listing agent and seller or an agreement with a buyer, including Active, Active Under Contract, Canceled, Closed, Expired, Pending, and Withdrawn.
    attr_accessor :standard_status

    # Description of the selling points of the building and/or land for sale. 
    attr_accessor :description

    attr_accessor :lot

    attr_accessor :building

    attr_accessor :price

    attr_accessor :list_agent

    attr_accessor :co_list_agent

    # images
    attr_accessor :images

    # videos
    attr_accessor :videos

    # floor_plans
    attr_accessor :floor_plans

    # interactive_content
    attr_accessor :interactive_content

    attr_accessor :property_website

    # orders
    attr_accessor :orders

    # Are downloads enabled for this listing?
    attr_accessor :downloads_enabled

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'address' => :'address',
        :'mls_number' => :'mls_number',
        :'type' => :'type',
        :'sub_type' => :'sub_type',
        :'status' => :'status',
        :'standard_status' => :'standard_status',
        :'description' => :'description',
        :'lot' => :'lot',
        :'building' => :'building',
        :'price' => :'price',
        :'list_agent' => :'list_agent',
        :'co_list_agent' => :'co_list_agent',
        :'images' => :'images',
        :'videos' => :'videos',
        :'floor_plans' => :'floor_plans',
        :'interactive_content' => :'interactive_content',
        :'property_website' => :'property_website',
        :'orders' => :'orders',
        :'downloads_enabled' => :'downloads_enabled'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'address' => :'Address',
        :'mls_number' => :'String',
        :'type' => :'String',
        :'sub_type' => :'String',
        :'status' => :'String',
        :'standard_status' => :'String',
        :'description' => :'String',
        :'lot' => :'ListingLot',
        :'building' => :'ListingBuilding',
        :'price' => :'ListingPrice',
        :'list_agent' => :'Group',
        :'co_list_agent' => :'Group',
        :'images' => :'Array<Image>',
        :'videos' => :'Array<Video>',
        :'floor_plans' => :'Array<FloorPlan>',
        :'interactive_content' => :'Array<InteractiveContent>',
        :'property_website' => :'PropertyWebsite',
        :'orders' => :'Array<Order>',
        :'downloads_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'mls_number',
        :'type',
        :'sub_type',
        :'status',
        :'standard_status',
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::Listing` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::Listing`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'mls_number')
        self.mls_number = attributes[:'mls_number']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'sub_type')
        self.sub_type = attributes[:'sub_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'standard_status')
        self.standard_status = attributes[:'standard_status']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'lot')
        self.lot = attributes[:'lot']
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'list_agent')
        self.list_agent = attributes[:'list_agent']
      end

      if attributes.key?(:'co_list_agent')
        self.co_list_agent = attributes[:'co_list_agent']
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:'videos')
        if (value = attributes[:'videos']).is_a?(Array)
          self.videos = value
        end
      end

      if attributes.key?(:'floor_plans')
        if (value = attributes[:'floor_plans']).is_a?(Array)
          self.floor_plans = value
        end
      end

      if attributes.key?(:'interactive_content')
        if (value = attributes[:'interactive_content']).is_a?(Array)
          self.interactive_content = value
        end
      end

      if attributes.key?(:'property_website')
        self.property_website = attributes[:'property_website']
      end

      if attributes.key?(:'orders')
        if (value = attributes[:'orders']).is_a?(Array)
          self.orders = value
        end
      end

      if attributes.key?(:'downloads_enabled')
        self.downloads_enabled = attributes[:'downloads_enabled']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 255
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 255.')
      end

      if @id.to_s.length < 0
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 0.')
      end

      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if !@mls_number.nil? && @mls_number.to_s.length > 100
        invalid_properties.push('invalid value for "mls_number", the character length must be smaller than or equal to 100.')
      end

      if !@mls_number.nil? && @mls_number.to_s.length < 1
        invalid_properties.push('invalid value for "mls_number", the character length must be great than or equal to 1.')
      end

      if !@type.nil? && @type.to_s.length > 100
        invalid_properties.push('invalid value for "type", the character length must be smaller than or equal to 100.')
      end

      if !@type.nil? && @type.to_s.length < 1
        invalid_properties.push('invalid value for "type", the character length must be great than or equal to 1.')
      end

      if !@sub_type.nil? && @sub_type.to_s.length > 100
        invalid_properties.push('invalid value for "sub_type", the character length must be smaller than or equal to 100.')
      end

      if !@sub_type.nil? && @sub_type.to_s.length < 1
        invalid_properties.push('invalid value for "sub_type", the character length must be great than or equal to 1.')
      end

      if !@status.nil? && @status.to_s.length > 100
        invalid_properties.push('invalid value for "status", the character length must be smaller than or equal to 100.')
      end

      if !@status.nil? && @status.to_s.length < 1
        invalid_properties.push('invalid value for "status", the character length must be great than or equal to 1.')
      end

      if !@standard_status.nil? && @standard_status.to_s.length > 100
        invalid_properties.push('invalid value for "standard_status", the character length must be smaller than or equal to 100.')
      end

      if !@standard_status.nil? && @standard_status.to_s.length < 1
        invalid_properties.push('invalid value for "standard_status", the character length must be great than or equal to 1.')
      end

      if !@description.nil? && @description.to_s.length > 65535
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 65535.')
      end

      if !@description.nil? && @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      if @downloads_enabled.nil?
        invalid_properties.push('invalid value for "downloads_enabled", downloads_enabled cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @address.nil?
      return false if !@mls_number.nil? && @mls_number.to_s.length > 100
      return false if !@mls_number.nil? && @mls_number.to_s.length < 1
      type_validator = EnumAttributeValidator.new('String', ["BUSINESS_OPPORTUNITY", "COMMERCIAL_LEASE", "COMMERCIAL_SALE", "FARM", "LAND", "MANUFACTURED_IN_PARK", "RESIDENTIAL", "RESIDENTIAL_INCOME", "RESIDENTIAL_LEASE"])
      return false unless type_validator.valid?(@type)
      return false if !@type.nil? && @type.to_s.length > 100
      return false if !@type.nil? && @type.to_s.length < 1
      sub_type_validator = EnumAttributeValidator.new('String', ["APARTMENT", "CONDOMINIUM", "DUPLEX", "FARM", "SINGLE_FAMILY_RESIDENCE", "TIMESHARE", "TOWNHOUSE", "OFFICE"])
      return false unless sub_type_validator.valid?(@sub_type)
      return false if !@sub_type.nil? && @sub_type.to_s.length > 100
      return false if !@sub_type.nil? && @sub_type.to_s.length < 1
      status_validator = EnumAttributeValidator.new('String', ["DRAFT", "COMING_SOON", "FOR_SALE", "FOR_LEASE", "PENDING_SALE", "PENDING_LEASE", "SOLD", "LEASED", "OFF_MARKET"])
      return false unless status_validator.valid?(@status)
      return false if !@status.nil? && @status.to_s.length > 100
      return false if !@status.nil? && @status.to_s.length < 1
      standard_status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "ACTIVE_UNDER_CONTRACT", "CANCELED", "CLOSED", "COMING_SOON", "DELETE", "EXPIRED", "HOLD", "INCOMPLETE", "PENDING", "WITHDRAWN"])
      return false unless standard_status_validator.valid?(@standard_status)
      return false if !@standard_status.nil? && @standard_status.to_s.length > 100
      return false if !@standard_status.nil? && @standard_status.to_s.length < 1
      return false if !@description.nil? && @description.to_s.length > 65535
      return false if !@description.nil? && @description.to_s.length < 1
      return false if @downloads_enabled.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 255
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 255.'
      end

      if id.to_s.length < 0
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 0.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] mls_number Value to be assigned
    def mls_number=(mls_number)
      if !mls_number.nil? && mls_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "mls_number", the character length must be smaller than or equal to 100.'
      end

      if !mls_number.nil? && mls_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "mls_number", the character length must be great than or equal to 1.'
      end

      @mls_number = mls_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["BUSINESS_OPPORTUNITY", "COMMERCIAL_LEASE", "COMMERCIAL_SALE", "FARM", "LAND", "MANUFACTURED_IN_PARK", "RESIDENTIAL", "RESIDENTIAL_INCOME", "RESIDENTIAL_LEASE"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sub_type Object to be assigned
    def sub_type=(sub_type)
      validator = EnumAttributeValidator.new('String', ["APARTMENT", "CONDOMINIUM", "DUPLEX", "FARM", "SINGLE_FAMILY_RESIDENCE", "TIMESHARE", "TOWNHOUSE", "OFFICE"])
      unless validator.valid?(sub_type)
        fail ArgumentError, "invalid value for \"sub_type\", must be one of #{validator.allowable_values}."
      end
      @sub_type = sub_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["DRAFT", "COMING_SOON", "FOR_SALE", "FOR_LEASE", "PENDING_SALE", "PENDING_LEASE", "SOLD", "LEASED", "OFF_MARKET"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] standard_status Object to be assigned
    def standard_status=(standard_status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "ACTIVE_UNDER_CONTRACT", "CANCELED", "CLOSED", "COMING_SOON", "DELETE", "EXPIRED", "HOLD", "INCOMPLETE", "PENDING", "WITHDRAWN"])
      unless validator.valid?(standard_status)
        fail ArgumentError, "invalid value for \"standard_status\", must be one of #{validator.allowable_values}."
      end
      @standard_status = standard_status
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 65535
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 65535.'
      end

      if !description.nil? && description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          address == o.address &&
          mls_number == o.mls_number &&
          type == o.type &&
          sub_type == o.sub_type &&
          status == o.status &&
          standard_status == o.standard_status &&
          description == o.description &&
          lot == o.lot &&
          building == o.building &&
          price == o.price &&
          list_agent == o.list_agent &&
          co_list_agent == o.co_list_agent &&
          images == o.images &&
          videos == o.videos &&
          floor_plans == o.floor_plans &&
          interactive_content == o.interactive_content &&
          property_website == o.property_website &&
          orders == o.orders &&
          downloads_enabled == o.downloads_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, address, mls_number, type, sub_type, status, standard_status, description, lot, building, price, list_agent, co_list_agent, images, videos, floor_plans, interactive_content, property_website, orders, downloads_enabled].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Aryeo.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
