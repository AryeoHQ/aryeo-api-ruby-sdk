=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A scale diagram of the arrangement of a building.
  class FloorPlan
    # ID of the floor plan. UUID Version 4.
    attr_accessor :id

    # A URL for the original, full-resolution version of the floor plan. Useful for downloading.
    attr_accessor :original_url

    # A URL for a large version of the floor plan.
    attr_accessor :large_url

    # A URL for a thumbnail-sized version of the floor plan.
    attr_accessor :thumbnail_url

    # The title (or caption) of the floor plan.
    attr_accessor :title

    # Index order position of the floor plan.
    attr_accessor :index

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'original_url' => :'original_url',
        :'large_url' => :'large_url',
        :'thumbnail_url' => :'thumbnail_url',
        :'title' => :'title',
        :'index' => :'index'
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
        :'original_url' => :'String',
        :'large_url' => :'String',
        :'thumbnail_url' => :'String',
        :'title' => :'String',
        :'index' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'index'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::FloorPlan` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::FloorPlan`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'original_url')
        self.original_url = attributes[:'original_url']
      end

      if attributes.key?(:'large_url')
        self.large_url = attributes[:'large_url']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 36
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 36.')
      end

      if @id.to_s.length < 36
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 36.')
      end

      if @original_url.nil?
        invalid_properties.push('invalid value for "original_url", original_url cannot be nil.')
      end

      if @original_url.to_s.length > 65535
        invalid_properties.push('invalid value for "original_url", the character length must be smaller than or equal to 65535.')
      end

      if @original_url.to_s.length < 1
        invalid_properties.push('invalid value for "original_url", the character length must be great than or equal to 1.')
      end

      if @large_url.nil?
        invalid_properties.push('invalid value for "large_url", large_url cannot be nil.')
      end

      if @large_url.to_s.length > 65535
        invalid_properties.push('invalid value for "large_url", the character length must be smaller than or equal to 65535.')
      end

      if @large_url.to_s.length < 1
        invalid_properties.push('invalid value for "large_url", the character length must be great than or equal to 1.')
      end

      if @thumbnail_url.nil?
        invalid_properties.push('invalid value for "thumbnail_url", thumbnail_url cannot be nil.')
      end

      if @thumbnail_url.to_s.length > 65535
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be smaller than or equal to 65535.')
      end

      if @thumbnail_url.to_s.length < 1
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be great than or equal to 1.')
      end

      if !@title.nil? && @title.to_s.length > 255
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 255.')
      end

      if !@title.nil? && @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if !@index.nil? && @index < 0
        invalid_properties.push('invalid value for "index", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 36
      return false if @id.to_s.length < 36
      return false if @original_url.nil?
      return false if @original_url.to_s.length > 65535
      return false if @original_url.to_s.length < 1
      return false if @large_url.nil?
      return false if @large_url.to_s.length > 65535
      return false if @large_url.to_s.length < 1
      return false if @thumbnail_url.nil?
      return false if @thumbnail_url.to_s.length > 65535
      return false if @thumbnail_url.to_s.length < 1
      return false if !@title.nil? && @title.to_s.length > 255
      return false if !@title.nil? && @title.to_s.length < 1
      return false if !@index.nil? && @index < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 36
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 36.'
      end

      if id.to_s.length < 36
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 36.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] original_url Value to be assigned
    def original_url=(original_url)
      if original_url.nil?
        fail ArgumentError, 'original_url cannot be nil'
      end

      if original_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "original_url", the character length must be smaller than or equal to 65535.'
      end

      if original_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "original_url", the character length must be great than or equal to 1.'
      end

      @original_url = original_url
    end

    # Custom attribute writer method with validation
    # @param [Object] large_url Value to be assigned
    def large_url=(large_url)
      if large_url.nil?
        fail ArgumentError, 'large_url cannot be nil'
      end

      if large_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "large_url", the character length must be smaller than or equal to 65535.'
      end

      if large_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "large_url", the character length must be great than or equal to 1.'
      end

      @large_url = large_url
    end

    # Custom attribute writer method with validation
    # @param [Object] thumbnail_url Value to be assigned
    def thumbnail_url=(thumbnail_url)
      if thumbnail_url.nil?
        fail ArgumentError, 'thumbnail_url cannot be nil'
      end

      if thumbnail_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be smaller than or equal to 65535.'
      end

      if thumbnail_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be great than or equal to 1.'
      end

      @thumbnail_url = thumbnail_url
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 255
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 255.'
      end

      if !title.nil? && title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] index Value to be assigned
    def index=(index)
      if !index.nil? && index < 0
        fail ArgumentError, 'invalid value for "index", must be greater than or equal to 0.'
      end

      @index = index
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          original_url == o.original_url &&
          large_url == o.large_url &&
          thumbnail_url == o.thumbnail_url &&
          title == o.title &&
          index == o.index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, original_url, large_url, thumbnail_url, title, index].hash
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
