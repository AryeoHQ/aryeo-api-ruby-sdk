=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A real-estate property.
  class PartialListing
    # ID of the listing.
    attr_accessor :id

    attr_accessor :address

    # Has the listing been delivered?
    attr_accessor :delivery_status

    # Thumbnail URL for the listing.
    attr_accessor :thumbnail_url

    # The price of the property in dollars.
    attr_accessor :price

    # URL for branded property website.
    attr_accessor :branded_url

    # Total number of square feet.
    attr_accessor :square_feet

    # Number of bedrooms.
    attr_accessor :bedrooms

    # Number of bathrooms.
    attr_accessor :bathrooms

    # Are downloads enabled for this listing?
    attr_accessor :downloads_enabled

    # Sales status for the listing.
    attr_accessor :status

    attr_accessor :property_details

    attr_accessor :agent

    attr_accessor :co_agent

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
        :'delivery_status' => :'delivery_status',
        :'thumbnail_url' => :'thumbnail_url',
        :'price' => :'price',
        :'branded_url' => :'branded_url',
        :'square_feet' => :'square_feet',
        :'bedrooms' => :'bedrooms',
        :'bathrooms' => :'bathrooms',
        :'downloads_enabled' => :'downloads_enabled',
        :'status' => :'status',
        :'property_details' => :'property_details',
        :'agent' => :'agent',
        :'co_agent' => :'co_agent'
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
        :'address' => :'PartialAddress',
        :'delivery_status' => :'String',
        :'thumbnail_url' => :'String',
        :'price' => :'Integer',
        :'branded_url' => :'String',
        :'square_feet' => :'Float',
        :'bedrooms' => :'Integer',
        :'bathrooms' => :'Float',
        :'downloads_enabled' => :'Boolean',
        :'status' => :'String',
        :'property_details' => :'PropertyDetails',
        :'agent' => :'PartialGroup',
        :'co_agent' => :'PartialGroup'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'thumbnail_url',
        :'price',
        :'branded_url',
        :'square_feet',
        :'bedrooms',
        :'bathrooms',
        :'status',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::PartialListing` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::PartialListing`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'delivery_status')
        self.delivery_status = attributes[:'delivery_status']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'branded_url')
        self.branded_url = attributes[:'branded_url']
      end

      if attributes.key?(:'square_feet')
        self.square_feet = attributes[:'square_feet']
      end

      if attributes.key?(:'bedrooms')
        self.bedrooms = attributes[:'bedrooms']
      end

      if attributes.key?(:'bathrooms')
        self.bathrooms = attributes[:'bathrooms']
      end

      if attributes.key?(:'downloads_enabled')
        self.downloads_enabled = attributes[:'downloads_enabled']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'property_details')
        self.property_details = attributes[:'property_details']
      end

      if attributes.key?(:'agent')
        self.agent = attributes[:'agent']
      end

      if attributes.key?(:'co_agent')
        self.co_agent = attributes[:'co_agent']
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

      if @delivery_status.nil?
        invalid_properties.push('invalid value for "delivery_status", delivery_status cannot be nil.')
      end

      if @delivery_status.to_s.length > 255
        invalid_properties.push('invalid value for "delivery_status", the character length must be smaller than or equal to 255.')
      end

      if @delivery_status.to_s.length < 0
        invalid_properties.push('invalid value for "delivery_status", the character length must be great than or equal to 0.')
      end

      if !@thumbnail_url.nil? && @thumbnail_url.to_s.length > 1000
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be smaller than or equal to 1000.')
      end

      if !@thumbnail_url.nil? && @thumbnail_url.to_s.length < 0
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be great than or equal to 0.')
      end

      if !@branded_url.nil? && @branded_url.to_s.length > 65535
        invalid_properties.push('invalid value for "branded_url", the character length must be smaller than or equal to 65535.')
      end

      if !@branded_url.nil? && @branded_url.to_s.length < 1
        invalid_properties.push('invalid value for "branded_url", the character length must be great than or equal to 1.')
      end

      if @downloads_enabled.nil?
        invalid_properties.push('invalid value for "downloads_enabled", downloads_enabled cannot be nil.')
      end

      if !@status.nil? && @status.to_s.length > 100
        invalid_properties.push('invalid value for "status", the character length must be smaller than or equal to 100.')
      end

      if !@status.nil? && @status.to_s.length < 1
        invalid_properties.push('invalid value for "status", the character length must be great than or equal to 1.')
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
      return false if @delivery_status.nil?
      delivery_status_validator = EnumAttributeValidator.new('String', ["delivered", "undelivered"])
      return false unless delivery_status_validator.valid?(@delivery_status)
      return false if @delivery_status.to_s.length > 255
      return false if @delivery_status.to_s.length < 0
      return false if !@thumbnail_url.nil? && @thumbnail_url.to_s.length > 1000
      return false if !@thumbnail_url.nil? && @thumbnail_url.to_s.length < 0
      return false if !@branded_url.nil? && @branded_url.to_s.length > 65535
      return false if !@branded_url.nil? && @branded_url.to_s.length < 1
      return false if @downloads_enabled.nil?
      status_validator = EnumAttributeValidator.new('String', ["Off Market", "Pending Lease", "Vacation Rental", "Leased", "For Sale", "Draft", "Coming Soon", "Soldm", "NULL", "For Lease", "Pending Sale", "Price Reduction", "Sold"])
      return false unless status_validator.valid?(@status)
      return false if !@status.nil? && @status.to_s.length > 100
      return false if !@status.nil? && @status.to_s.length < 1
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_status Object to be assigned
    def delivery_status=(delivery_status)
      validator = EnumAttributeValidator.new('String', ["delivered", "undelivered"])
      unless validator.valid?(delivery_status)
        fail ArgumentError, "invalid value for \"delivery_status\", must be one of #{validator.allowable_values}."
      end
      @delivery_status = delivery_status
    end

    # Custom attribute writer method with validation
    # @param [Object] thumbnail_url Value to be assigned
    def thumbnail_url=(thumbnail_url)
      if !thumbnail_url.nil? && thumbnail_url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be smaller than or equal to 1000.'
      end

      if !thumbnail_url.nil? && thumbnail_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be great than or equal to 0.'
      end

      @thumbnail_url = thumbnail_url
    end

    # Custom attribute writer method with validation
    # @param [Object] branded_url Value to be assigned
    def branded_url=(branded_url)
      if !branded_url.nil? && branded_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "branded_url", the character length must be smaller than or equal to 65535.'
      end

      if !branded_url.nil? && branded_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "branded_url", the character length must be great than or equal to 1.'
      end

      @branded_url = branded_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Off Market", "Pending Lease", "Vacation Rental", "Leased", "For Sale", "Draft", "Coming Soon", "Soldm", "NULL", "For Lease", "Pending Sale", "Price Reduction", "Sold"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          address == o.address &&
          delivery_status == o.delivery_status &&
          thumbnail_url == o.thumbnail_url &&
          price == o.price &&
          branded_url == o.branded_url &&
          square_feet == o.square_feet &&
          bedrooms == o.bedrooms &&
          bathrooms == o.bathrooms &&
          downloads_enabled == o.downloads_enabled &&
          status == o.status &&
          property_details == o.property_details &&
          agent == o.agent &&
          co_agent == o.co_agent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, address, delivery_status, thumbnail_url, price, branded_url, square_feet, bedrooms, bathrooms, downloads_enabled, status, property_details, agent, co_agent].hash
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
