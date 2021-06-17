=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A structure containing a street address and additional metadata about a location.
  class PartialAddress
    # ID of address.
    attr_accessor :id

    # The full address string containing address_1 and address_2.
    attr_accessor :full_address

    # A formatted address string containing the street.
    attr_accessor :formatted_address_1

    # A formatted address string containing the city, state, and zipcode.
    attr_accessor :formatted_address_2

    # Latitude of the address.
    attr_accessor :latitude

    # Longitude of the address.
    attr_accessor :longitude

    # ID of place.
    attr_accessor :place_id

    # Address line 1
    attr_accessor :address_line_1

    # Address line 2
    attr_accessor :address_line_2

    # City
    attr_accessor :city

    # State
    attr_accessor :state

    # Postal Code
    attr_accessor :postal_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'full_address' => :'full_address',
        :'formatted_address_1' => :'formatted_address_1',
        :'formatted_address_2' => :'formatted_address_2',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'place_id' => :'place_id',
        :'address_line_1' => :'address_line_1',
        :'address_line_2' => :'address_line_2',
        :'city' => :'city',
        :'state' => :'state',
        :'postal_code' => :'postal_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'full_address' => :'String',
        :'formatted_address_1' => :'String',
        :'formatted_address_2' => :'String',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'place_id' => :'String',
        :'address_line_1' => :'String',
        :'address_line_2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'postal_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'full_address',
        :'place_id',
        :'address_line_1',
        :'address_line_2',
        :'city',
        :'state',
        :'postal_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::PartialAddress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::PartialAddress`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'full_address')
        self.full_address = attributes[:'full_address']
      end

      if attributes.key?(:'formatted_address_1')
        self.formatted_address_1 = attributes[:'formatted_address_1']
      end

      if attributes.key?(:'formatted_address_2')
        self.formatted_address_2 = attributes[:'formatted_address_2']
      end

      if attributes.key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.key?(:'place_id')
        self.place_id = attributes[:'place_id']
      end

      if attributes.key?(:'address_line_1')
        self.address_line_1 = attributes[:'address_line_1']
      end

      if attributes.key?(:'address_line_2')
        self.address_line_2 = attributes[:'address_line_2']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if !@full_address.nil? && @full_address.to_s.length > 255
        invalid_properties.push('invalid value for "full_address", the character length must be smaller than or equal to 255.')
      end

      if !@full_address.nil? && @full_address.to_s.length < 0
        invalid_properties.push('invalid value for "full_address", the character length must be great than or equal to 0.')
      end

      if @formatted_address_1.nil?
        invalid_properties.push('invalid value for "formatted_address_1", formatted_address_1 cannot be nil.')
      end

      if @formatted_address_1.to_s.length > 255
        invalid_properties.push('invalid value for "formatted_address_1", the character length must be smaller than or equal to 255.')
      end

      if @formatted_address_1.to_s.length < 0
        invalid_properties.push('invalid value for "formatted_address_1", the character length must be great than or equal to 0.')
      end

      if @formatted_address_2.nil?
        invalid_properties.push('invalid value for "formatted_address_2", formatted_address_2 cannot be nil.')
      end

      if @formatted_address_2.to_s.length > 255
        invalid_properties.push('invalid value for "formatted_address_2", the character length must be smaller than or equal to 255.')
      end

      if @formatted_address_2.to_s.length < 0
        invalid_properties.push('invalid value for "formatted_address_2", the character length must be great than or equal to 0.')
      end

      if @latitude.nil?
        invalid_properties.push('invalid value for "latitude", latitude cannot be nil.')
      end

      if @longitude.nil?
        invalid_properties.push('invalid value for "longitude", longitude cannot be nil.')
      end

      if !@place_id.nil? && @place_id.to_s.length > 255
        invalid_properties.push('invalid value for "place_id", the character length must be smaller than or equal to 255.')
      end

      if !@place_id.nil? && @place_id.to_s.length < 0
        invalid_properties.push('invalid value for "place_id", the character length must be great than or equal to 0.')
      end

      if !@address_line_1.nil? && @address_line_1.to_s.length > 255
        invalid_properties.push('invalid value for "address_line_1", the character length must be smaller than or equal to 255.')
      end

      if !@address_line_1.nil? && @address_line_1.to_s.length < 0
        invalid_properties.push('invalid value for "address_line_1", the character length must be great than or equal to 0.')
      end

      if !@address_line_2.nil? && @address_line_2.to_s.length > 255
        invalid_properties.push('invalid value for "address_line_2", the character length must be smaller than or equal to 255.')
      end

      if !@address_line_2.nil? && @address_line_2.to_s.length < 0
        invalid_properties.push('invalid value for "address_line_2", the character length must be great than or equal to 0.')
      end

      if !@city.nil? && @city.to_s.length > 255
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 255.')
      end

      if !@city.nil? && @city.to_s.length < 0
        invalid_properties.push('invalid value for "city", the character length must be great than or equal to 0.')
      end

      if !@state.nil? && @state.to_s.length > 255
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 255.')
      end

      if !@state.nil? && @state.to_s.length < 0
        invalid_properties.push('invalid value for "state", the character length must be great than or equal to 0.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 255
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 255.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length < 0
        invalid_properties.push('invalid value for "postal_code", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if !@full_address.nil? && @full_address.to_s.length > 255
      return false if !@full_address.nil? && @full_address.to_s.length < 0
      return false if @formatted_address_1.nil?
      return false if @formatted_address_1.to_s.length > 255
      return false if @formatted_address_1.to_s.length < 0
      return false if @formatted_address_2.nil?
      return false if @formatted_address_2.to_s.length > 255
      return false if @formatted_address_2.to_s.length < 0
      return false if @latitude.nil?
      return false if @longitude.nil?
      return false if !@place_id.nil? && @place_id.to_s.length > 255
      return false if !@place_id.nil? && @place_id.to_s.length < 0
      return false if !@address_line_1.nil? && @address_line_1.to_s.length > 255
      return false if !@address_line_1.nil? && @address_line_1.to_s.length < 0
      return false if !@address_line_2.nil? && @address_line_2.to_s.length > 255
      return false if !@address_line_2.nil? && @address_line_2.to_s.length < 0
      return false if !@city.nil? && @city.to_s.length > 255
      return false if !@city.nil? && @city.to_s.length < 0
      return false if !@state.nil? && @state.to_s.length > 255
      return false if !@state.nil? && @state.to_s.length < 0
      return false if !@postal_code.nil? && @postal_code.to_s.length > 255
      return false if !@postal_code.nil? && @postal_code.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] full_address Value to be assigned
    def full_address=(full_address)
      if !full_address.nil? && full_address.to_s.length > 255
        fail ArgumentError, 'invalid value for "full_address", the character length must be smaller than or equal to 255.'
      end

      if !full_address.nil? && full_address.to_s.length < 0
        fail ArgumentError, 'invalid value for "full_address", the character length must be great than or equal to 0.'
      end

      @full_address = full_address
    end

    # Custom attribute writer method with validation
    # @param [Object] formatted_address_1 Value to be assigned
    def formatted_address_1=(formatted_address_1)
      if formatted_address_1.nil?
        fail ArgumentError, 'formatted_address_1 cannot be nil'
      end

      if formatted_address_1.to_s.length > 255
        fail ArgumentError, 'invalid value for "formatted_address_1", the character length must be smaller than or equal to 255.'
      end

      if formatted_address_1.to_s.length < 0
        fail ArgumentError, 'invalid value for "formatted_address_1", the character length must be great than or equal to 0.'
      end

      @formatted_address_1 = formatted_address_1
    end

    # Custom attribute writer method with validation
    # @param [Object] formatted_address_2 Value to be assigned
    def formatted_address_2=(formatted_address_2)
      if formatted_address_2.nil?
        fail ArgumentError, 'formatted_address_2 cannot be nil'
      end

      if formatted_address_2.to_s.length > 255
        fail ArgumentError, 'invalid value for "formatted_address_2", the character length must be smaller than or equal to 255.'
      end

      if formatted_address_2.to_s.length < 0
        fail ArgumentError, 'invalid value for "formatted_address_2", the character length must be great than or equal to 0.'
      end

      @formatted_address_2 = formatted_address_2
    end

    # Custom attribute writer method with validation
    # @param [Object] place_id Value to be assigned
    def place_id=(place_id)
      if !place_id.nil? && place_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "place_id", the character length must be smaller than or equal to 255.'
      end

      if !place_id.nil? && place_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "place_id", the character length must be great than or equal to 0.'
      end

      @place_id = place_id
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line_1 Value to be assigned
    def address_line_1=(address_line_1)
      if !address_line_1.nil? && address_line_1.to_s.length > 255
        fail ArgumentError, 'invalid value for "address_line_1", the character length must be smaller than or equal to 255.'
      end

      if !address_line_1.nil? && address_line_1.to_s.length < 0
        fail ArgumentError, 'invalid value for "address_line_1", the character length must be great than or equal to 0.'
      end

      @address_line_1 = address_line_1
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line_2 Value to be assigned
    def address_line_2=(address_line_2)
      if !address_line_2.nil? && address_line_2.to_s.length > 255
        fail ArgumentError, 'invalid value for "address_line_2", the character length must be smaller than or equal to 255.'
      end

      if !address_line_2.nil? && address_line_2.to_s.length < 0
        fail ArgumentError, 'invalid value for "address_line_2", the character length must be great than or equal to 0.'
      end

      @address_line_2 = address_line_2
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 255
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 255.'
      end

      if !city.nil? && city.to_s.length < 0
        fail ArgumentError, 'invalid value for "city", the character length must be great than or equal to 0.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if !state.nil? && state.to_s.length > 255
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 255.'
      end

      if !state.nil? && state.to_s.length < 0
        fail ArgumentError, 'invalid value for "state", the character length must be great than or equal to 0.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 255
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 255.'
      end

      if !postal_code.nil? && postal_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "postal_code", the character length must be great than or equal to 0.'
      end

      @postal_code = postal_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          full_address == o.full_address &&
          formatted_address_1 == o.formatted_address_1 &&
          formatted_address_2 == o.formatted_address_2 &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          place_id == o.place_id &&
          address_line_1 == o.address_line_1 &&
          address_line_2 == o.address_line_2 &&
          city == o.city &&
          state == o.state &&
          postal_code == o.postal_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, full_address, formatted_address_1, formatted_address_2, latitude, longitude, place_id, address_line_1, address_line_2, city, state, postal_code].hash
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
