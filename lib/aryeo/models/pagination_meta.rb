=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # Metadata about a paginated response.
  class PaginationMeta
    # Total number of records.
    attr_accessor :total

    # Number of records per page.
    attr_accessor :per_page

    # The current page.
    attr_accessor :current_page

    # The last page of records.
    attr_accessor :last_page

    # The ID of the first record on this page. This is specified as either `integer` or `null` purely for contract testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand.
    attr_accessor :from

    # The ID of the last record on this page. This is specified as either `integer` or `null` purely for contract testing purposes. The model which is autogenerated from this definition will be thrown out and written by-hand.
    attr_accessor :to

    # The current paged path.
    attr_accessor :path

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total' => :'total',
        :'per_page' => :'per_page',
        :'current_page' => :'current_page',
        :'last_page' => :'last_page',
        :'from' => :'from',
        :'to' => :'to',
        :'path' => :'path'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total' => :'Integer',
        :'per_page' => :'Integer',
        :'current_page' => :'Integer',
        :'last_page' => :'Integer',
        :'from' => :'Integer',
        :'to' => :'Integer',
        :'path' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'from',
        :'to',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::PaginationMeta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::PaginationMeta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'per_page')
        self.per_page = attributes[:'per_page']
      end

      if attributes.key?(:'current_page')
        self.current_page = attributes[:'current_page']
      end

      if attributes.key?(:'last_page')
        self.last_page = attributes[:'last_page']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @total.nil?
        invalid_properties.push('invalid value for "total", total cannot be nil.')
      end

      if @per_page.nil?
        invalid_properties.push('invalid value for "per_page", per_page cannot be nil.')
      end

      if @current_page.nil?
        invalid_properties.push('invalid value for "current_page", current_page cannot be nil.')
      end

      if @last_page.nil?
        invalid_properties.push('invalid value for "last_page", last_page cannot be nil.')
      end

      if @path.nil?
        invalid_properties.push('invalid value for "path", path cannot be nil.')
      end

      if @path.to_s.length > 65535
        invalid_properties.push('invalid value for "path", the character length must be smaller than or equal to 65535.')
      end

      if @path.to_s.length < 1
        invalid_properties.push('invalid value for "path", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @total.nil?
      return false if @per_page.nil?
      return false if @current_page.nil?
      return false if @last_page.nil?
      return false if @path.nil?
      return false if @path.to_s.length > 65535
      return false if @path.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] path Value to be assigned
    def path=(path)
      if path.nil?
        fail ArgumentError, 'path cannot be nil'
      end

      if path.to_s.length > 65535
        fail ArgumentError, 'invalid value for "path", the character length must be smaller than or equal to 65535.'
      end

      if path.to_s.length < 1
        fail ArgumentError, 'invalid value for "path", the character length must be great than or equal to 1.'
      end

      @path = path
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total == o.total &&
          per_page == o.per_page &&
          current_page == o.current_page &&
          last_page == o.last_page &&
          from == o.from &&
          to == o.to &&
          path == o.path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total, per_page, current_page, last_page, from, to, path].hash
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
