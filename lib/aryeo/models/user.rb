=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A record of a person on the Aryeo platform.
  class User
    # ID of the user.
    attr_accessor :id

    # Email address of the user.
    attr_accessor :email

    # First name of the user.
    attr_accessor :first_name

    # Last name of the user.
    attr_accessor :last_name

    # A phone number represented in whichever standards specified by the user, typically ###-###-#### (separated by hyphens).
    attr_accessor :phone

    # The avatar image URL of a user.
    attr_accessor :avatar_url

    # Describes user's relationship (access level) to a specified group. Only returned if this resource is returned as a sub-resource of a group.
    attr_accessor :relationship

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'phone' => :'phone',
        :'avatar_url' => :'avatar_url',
        :'relationship' => :'relationship'
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
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'phone' => :'String',
        :'avatar_url' => :'String',
        :'relationship' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'first_name',
        :'last_name',
        :'phone',
        :'avatar_url',
        :'relationship'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.key?(:'relationship')
        self.relationship = attributes[:'relationship']
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

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if @email.to_s.length < 0
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 0.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 255
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 255.')
      end

      if !@first_name.nil? && @first_name.to_s.length < 0
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 0.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 255
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 255.')
      end

      if !@last_name.nil? && @last_name.to_s.length < 0
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 0.')
      end

      if !@phone.nil? && @phone.to_s.length > 255
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 255.')
      end

      if !@phone.nil? && @phone.to_s.length < 0
        invalid_properties.push('invalid value for "phone", the character length must be great than or equal to 0.')
      end

      if !@avatar_url.nil? && @avatar_url.to_s.length > 255
        invalid_properties.push('invalid value for "avatar_url", the character length must be smaller than or equal to 255.')
      end

      if !@avatar_url.nil? && @avatar_url.to_s.length < 0
        invalid_properties.push('invalid value for "avatar_url", the character length must be great than or equal to 0.')
      end

      if !@relationship.nil? && @relationship.to_s.length > 255
        invalid_properties.push('invalid value for "relationship", the character length must be smaller than or equal to 255.')
      end

      if !@relationship.nil? && @relationship.to_s.length < 0
        invalid_properties.push('invalid value for "relationship", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @email.nil?
      return false if @email.to_s.length > 255
      return false if @email.to_s.length < 0
      return false if !@first_name.nil? && @first_name.to_s.length > 255
      return false if !@first_name.nil? && @first_name.to_s.length < 0
      return false if !@last_name.nil? && @last_name.to_s.length > 255
      return false if !@last_name.nil? && @last_name.to_s.length < 0
      return false if !@phone.nil? && @phone.to_s.length > 255
      return false if !@phone.nil? && @phone.to_s.length < 0
      return false if !@avatar_url.nil? && @avatar_url.to_s.length > 255
      return false if !@avatar_url.nil? && @avatar_url.to_s.length < 0
      return false if !@relationship.nil? && @relationship.to_s.length > 255
      return false if !@relationship.nil? && @relationship.to_s.length < 0
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
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      if email.to_s.length < 0
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 0.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 255.'
      end

      if !first_name.nil? && first_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 0.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 255.'
      end

      if !last_name.nil? && last_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 0.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length > 255
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 255.'
      end

      if !phone.nil? && phone.to_s.length < 0
        fail ArgumentError, 'invalid value for "phone", the character length must be great than or equal to 0.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] avatar_url Value to be assigned
    def avatar_url=(avatar_url)
      if !avatar_url.nil? && avatar_url.to_s.length > 255
        fail ArgumentError, 'invalid value for "avatar_url", the character length must be smaller than or equal to 255.'
      end

      if !avatar_url.nil? && avatar_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "avatar_url", the character length must be great than or equal to 0.'
      end

      @avatar_url = avatar_url
    end

    # Custom attribute writer method with validation
    # @param [Object] relationship Value to be assigned
    def relationship=(relationship)
      if !relationship.nil? && relationship.to_s.length > 255
        fail ArgumentError, 'invalid value for "relationship", the character length must be smaller than or equal to 255.'
      end

      if !relationship.nil? && relationship.to_s.length < 0
        fail ArgumentError, 'invalid value for "relationship", the character length must be great than or equal to 0.'
      end

      @relationship = relationship
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          phone == o.phone &&
          avatar_url == o.avatar_url &&
          relationship == o.relationship
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, email, first_name, last_name, phone, avatar_url, relationship].hash
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
