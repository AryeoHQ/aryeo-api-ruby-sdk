=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # Details about a real-estate listing.
  class PropertyDetails
    # The price of the property in dollars.
    attr_accessor :price

    # A number assigned to a real-estate listing for the purposes of information sharing.
    attr_accessor :mls_number

    # Number of bedrooms.
    attr_accessor :bedrooms

    # Number of bathrooms. Represented as a number in order to support half-baths.
    attr_accessor :bathrooms

    # Total number of square feet.
    attr_accessor :square_feet

    # Total acres.
    attr_accessor :lot_acres

    # Number of parking spaces.
    attr_accessor :parking_spots

    # Year the property was built.
    attr_accessor :year_built

    # Type of property.
    attr_accessor :property_type

    # Property description.
    attr_accessor :description

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
        :'price' => :'price',
        :'mls_number' => :'mls_number',
        :'bedrooms' => :'bedrooms',
        :'bathrooms' => :'bathrooms',
        :'square_feet' => :'square_feet',
        :'lot_acres' => :'lot_acres',
        :'parking_spots' => :'parking_spots',
        :'year_built' => :'year_built',
        :'property_type' => :'property_type',
        :'description' => :'description'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'price' => :'Integer',
        :'mls_number' => :'String',
        :'bedrooms' => :'Integer',
        :'bathrooms' => :'Float',
        :'square_feet' => :'Float',
        :'lot_acres' => :'Float',
        :'parking_spots' => :'Integer',
        :'year_built' => :'Integer',
        :'property_type' => :'String',
        :'description' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'price',
        :'mls_number',
        :'bedrooms',
        :'bathrooms',
        :'square_feet',
        :'lot_acres',
        :'parking_spots',
        :'year_built',
        :'property_type',
        :'description'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::PropertyDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::PropertyDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'mls_number')
        self.mls_number = attributes[:'mls_number']
      end

      if attributes.key?(:'bedrooms')
        self.bedrooms = attributes[:'bedrooms']
      end

      if attributes.key?(:'bathrooms')
        self.bathrooms = attributes[:'bathrooms']
      end

      if attributes.key?(:'square_feet')
        self.square_feet = attributes[:'square_feet']
      end

      if attributes.key?(:'lot_acres')
        self.lot_acres = attributes[:'lot_acres']
      end

      if attributes.key?(:'parking_spots')
        self.parking_spots = attributes[:'parking_spots']
      end

      if attributes.key?(:'year_built')
        self.year_built = attributes[:'year_built']
      end

      if attributes.key?(:'property_type')
        self.property_type = attributes[:'property_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@mls_number.nil? && @mls_number.to_s.length > 255
        invalid_properties.push('invalid value for "mls_number", the character length must be smaller than or equal to 255.')
      end

      if !@mls_number.nil? && @mls_number.to_s.length < 1
        invalid_properties.push('invalid value for "mls_number", the character length must be great than or equal to 1.')
      end

      if !@property_type.nil? && @property_type.to_s.length > 255
        invalid_properties.push('invalid value for "property_type", the character length must be smaller than or equal to 255.')
      end

      if !@property_type.nil? && @property_type.to_s.length < 0
        invalid_properties.push('invalid value for "property_type", the character length must be great than or equal to 0.')
      end

      if !@description.nil? && @description.to_s.length > 65535
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 65535.')
      end

      if !@description.nil? && @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@mls_number.nil? && @mls_number.to_s.length > 255
      return false if !@mls_number.nil? && @mls_number.to_s.length < 1
      property_type_validator = EnumAttributeValidator.new('String', ["Single Family", "Single Family Attached", "Single Family Detached", "Colonial", "Condo", "Townhome", "Twinhome", "Duplex", "Lot", "Land", "Manufactured Home", "Semi-Detached", "Rental", "Row House", "Horse Farm", "Other"])
      return false unless property_type_validator.valid?(@property_type)
      return false if !@property_type.nil? && @property_type.to_s.length > 255
      return false if !@property_type.nil? && @property_type.to_s.length < 0
      return false if !@description.nil? && @description.to_s.length > 65535
      return false if !@description.nil? && @description.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] mls_number Value to be assigned
    def mls_number=(mls_number)
      if !mls_number.nil? && mls_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "mls_number", the character length must be smaller than or equal to 255.'
      end

      if !mls_number.nil? && mls_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "mls_number", the character length must be great than or equal to 1.'
      end

      @mls_number = mls_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] property_type Object to be assigned
    def property_type=(property_type)
      validator = EnumAttributeValidator.new('String', ["Single Family", "Single Family Attached", "Single Family Detached", "Colonial", "Condo", "Townhome", "Twinhome", "Duplex", "Lot", "Land", "Manufactured Home", "Semi-Detached", "Rental", "Row House", "Horse Farm", "Other"])
      unless validator.valid?(property_type)
        fail ArgumentError, "invalid value for \"property_type\", must be one of #{validator.allowable_values}."
      end
      @property_type = property_type
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
          price == o.price &&
          mls_number == o.mls_number &&
          bedrooms == o.bedrooms &&
          bathrooms == o.bathrooms &&
          square_feet == o.square_feet &&
          lot_acres == o.lot_acres &&
          parking_spots == o.parking_spots &&
          year_built == o.year_built &&
          property_type == o.property_type &&
          description == o.description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [price, mls_number, bedrooms, bathrooms, square_feet, lot_acres, parking_spots, year_built, property_type, description].hash
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
