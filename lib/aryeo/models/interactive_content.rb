=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A 3D virtual tour.
  class InteractiveContent
    # ID of the content.
    attr_accessor :id

    # Is the content branded, unbranded, or both?
    attr_accessor :display_type

    # The type of interactive content.
    attr_accessor :content_type

    # URL for the content.
    attr_accessor :url

    # A URL for a thumbnail-sized preview of the content.
    attr_accessor :thumbnail_url

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
        :'display_type' => :'display_type',
        :'content_type' => :'content_type',
        :'url' => :'url',
        :'thumbnail_url' => :'thumbnail_url'
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
        :'display_type' => :'String',
        :'content_type' => :'String',
        :'url' => :'String',
        :'thumbnail_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'thumbnail_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::InteractiveContent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::InteractiveContent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'display_type')
        self.display_type = attributes[:'display_type']
      end

      if attributes.key?(:'content_type')
        self.content_type = attributes[:'content_type']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
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

      if @display_type.nil?
        invalid_properties.push('invalid value for "display_type", display_type cannot be nil.')
      end

      if @display_type.to_s.length > 65535
        invalid_properties.push('invalid value for "display_type", the character length must be smaller than or equal to 65535.')
      end

      if @display_type.to_s.length < 1
        invalid_properties.push('invalid value for "display_type", the character length must be great than or equal to 1.')
      end

      if @content_type.nil?
        invalid_properties.push('invalid value for "content_type", content_type cannot be nil.')
      end

      if @content_type.to_s.length > 65535
        invalid_properties.push('invalid value for "content_type", the character length must be smaller than or equal to 65535.')
      end

      if @content_type.to_s.length < 1
        invalid_properties.push('invalid value for "content_type", the character length must be great than or equal to 1.')
      end

      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      if @url.to_s.length > 65535
        invalid_properties.push('invalid value for "url", the character length must be smaller than or equal to 65535.')
      end

      if @url.to_s.length < 1
        invalid_properties.push('invalid value for "url", the character length must be great than or equal to 1.')
      end

      if !@thumbnail_url.nil? && @thumbnail_url.to_s.length > 65535
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be smaller than or equal to 65535.')
      end

      if !@thumbnail_url.nil? && @thumbnail_url.to_s.length < 1
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @display_type.nil?
      display_type_validator = EnumAttributeValidator.new('String', ["branded", "unbranded", "both"])
      return false unless display_type_validator.valid?(@display_type)
      return false if @display_type.to_s.length > 65535
      return false if @display_type.to_s.length < 1
      return false if @content_type.nil?
      content_type_validator = EnumAttributeValidator.new('String', ["matterport", "other"])
      return false unless content_type_validator.valid?(@content_type)
      return false if @content_type.to_s.length > 65535
      return false if @content_type.to_s.length < 1
      return false if @url.nil?
      return false if @url.to_s.length > 65535
      return false if @url.to_s.length < 1
      return false if !@thumbnail_url.nil? && @thumbnail_url.to_s.length > 65535
      return false if !@thumbnail_url.nil? && @thumbnail_url.to_s.length < 1
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
    # @param [Object] display_type Object to be assigned
    def display_type=(display_type)
      validator = EnumAttributeValidator.new('String', ["branded", "unbranded", "both"])
      unless validator.valid?(display_type)
        fail ArgumentError, "invalid value for \"display_type\", must be one of #{validator.allowable_values}."
      end
      @display_type = display_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] content_type Object to be assigned
    def content_type=(content_type)
      validator = EnumAttributeValidator.new('String', ["matterport", "other"])
      unless validator.valid?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{validator.allowable_values}."
      end
      @content_type = content_type
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if url.nil?
        fail ArgumentError, 'url cannot be nil'
      end

      if url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "url", the character length must be smaller than or equal to 65535.'
      end

      if url.to_s.length < 1
        fail ArgumentError, 'invalid value for "url", the character length must be great than or equal to 1.'
      end

      @url = url
    end

    # Custom attribute writer method with validation
    # @param [Object] thumbnail_url Value to be assigned
    def thumbnail_url=(thumbnail_url)
      if !thumbnail_url.nil? && thumbnail_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be smaller than or equal to 65535.'
      end

      if !thumbnail_url.nil? && thumbnail_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be great than or equal to 1.'
      end

      @thumbnail_url = thumbnail_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          display_type == o.display_type &&
          content_type == o.content_type &&
          url == o.url &&
          thumbnail_url == o.thumbnail_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, display_type, content_type, url, thumbnail_url].hash
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
