=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A collection of users that can interact with the Aryeo platform. Permissions and properties are determined based on the group's type which can be creator, agent, or brokerage.
  class Group
    # ID of the group.
    attr_accessor :id

    # The type of group.
    attr_accessor :group_type

    # The name of the group.
    attr_accessor :name

    # Group logo.
    attr_accessor :logo

    # Email.
    attr_accessor :email

    # Phone number.
    attr_accessor :phone

    # Website.
    attr_accessor :website

    # Does this group represent a brokerage or an agent who belongs to a brokerage?
    attr_accessor :is_brokerage_or_brokerage_agent

    attr_accessor :social_profiles

    attr_accessor :agent_properties

    # users
    attr_accessor :users

    attr_accessor :default_order_form

    # An array of order forms.
    attr_accessor :order_forms

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
        :'group_type' => :'group_type',
        :'name' => :'name',
        :'logo' => :'logo',
        :'email' => :'email',
        :'phone' => :'phone',
        :'website' => :'website',
        :'is_brokerage_or_brokerage_agent' => :'is_brokerage_or_brokerage_agent',
        :'social_profiles' => :'social_profiles',
        :'agent_properties' => :'agent_properties',
        :'users' => :'users',
        :'default_order_form' => :'default_order_form',
        :'order_forms' => :'order_forms'
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
        :'group_type' => :'String',
        :'name' => :'String',
        :'logo' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'website' => :'String',
        :'is_brokerage_or_brokerage_agent' => :'Boolean',
        :'social_profiles' => :'SocialProfiles',
        :'agent_properties' => :'GroupAgentProperties',
        :'users' => :'Array<User>',
        :'default_order_form' => :'OrderForm',
        :'order_forms' => :'Array<OrderForm>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'logo',
        :'email',
        :'phone',
        :'website',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::Group` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::Group`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'group_type')
        self.group_type = attributes[:'group_type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'is_brokerage_or_brokerage_agent')
        self.is_brokerage_or_brokerage_agent = attributes[:'is_brokerage_or_brokerage_agent']
      end

      if attributes.key?(:'social_profiles')
        self.social_profiles = attributes[:'social_profiles']
      end

      if attributes.key?(:'agent_properties')
        self.agent_properties = attributes[:'agent_properties']
      end

      if attributes.key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.key?(:'default_order_form')
        self.default_order_form = attributes[:'default_order_form']
      end

      if attributes.key?(:'order_forms')
        if (value = attributes[:'order_forms']).is_a?(Array)
          self.order_forms = value
        end
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

      if @group_type.nil?
        invalid_properties.push('invalid value for "group_type", group_type cannot be nil.')
      end

      if @group_type.to_s.length > 255
        invalid_properties.push('invalid value for "group_type", the character length must be smaller than or equal to 255.')
      end

      if @group_type.to_s.length < 0
        invalid_properties.push('invalid value for "group_type", the character length must be great than or equal to 0.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if @name.to_s.length < 0
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 0.')
      end

      if !@logo.nil? && @logo.to_s.length > 255
        invalid_properties.push('invalid value for "logo", the character length must be smaller than or equal to 255.')
      end

      if !@logo.nil? && @logo.to_s.length < 0
        invalid_properties.push('invalid value for "logo", the character length must be great than or equal to 0.')
      end

      if !@email.nil? && @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if !@email.nil? && @email.to_s.length < 0
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 0.')
      end

      if !@phone.nil? && @phone.to_s.length > 255
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 255.')
      end

      if !@phone.nil? && @phone.to_s.length < 0
        invalid_properties.push('invalid value for "phone", the character length must be great than or equal to 0.')
      end

      if !@website.nil? && @website.to_s.length > 255
        invalid_properties.push('invalid value for "website", the character length must be smaller than or equal to 255.')
      end

      if !@website.nil? && @website.to_s.length < 0
        invalid_properties.push('invalid value for "website", the character length must be great than or equal to 0.')
      end

      if @is_brokerage_or_brokerage_agent.nil?
        invalid_properties.push('invalid value for "is_brokerage_or_brokerage_agent", is_brokerage_or_brokerage_agent cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @group_type.nil?
      group_type_validator = EnumAttributeValidator.new('String', ["creator", "agent", "brokerage"])
      return false unless group_type_validator.valid?(@group_type)
      return false if @group_type.to_s.length > 255
      return false if @group_type.to_s.length < 0
      return false if @name.nil?
      return false if @name.to_s.length > 255
      return false if @name.to_s.length < 0
      return false if !@logo.nil? && @logo.to_s.length > 255
      return false if !@logo.nil? && @logo.to_s.length < 0
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email.nil? && @email.to_s.length < 0
      return false if !@phone.nil? && @phone.to_s.length > 255
      return false if !@phone.nil? && @phone.to_s.length < 0
      return false if !@website.nil? && @website.to_s.length > 255
      return false if !@website.nil? && @website.to_s.length < 0
      return false if @is_brokerage_or_brokerage_agent.nil?
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
    # @param [Object] group_type Object to be assigned
    def group_type=(group_type)
      validator = EnumAttributeValidator.new('String', ["creator", "agent", "brokerage"])
      unless validator.valid?(group_type)
        fail ArgumentError, "invalid value for \"group_type\", must be one of #{validator.allowable_values}."
      end
      @group_type = group_type
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      if name.to_s.length < 0
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 0.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] logo Value to be assigned
    def logo=(logo)
      if !logo.nil? && logo.to_s.length > 255
        fail ArgumentError, 'invalid value for "logo", the character length must be smaller than or equal to 255.'
      end

      if !logo.nil? && logo.to_s.length < 0
        fail ArgumentError, 'invalid value for "logo", the character length must be great than or equal to 0.'
      end

      @logo = logo
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      if !email.nil? && email.to_s.length < 0
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 0.'
      end

      @email = email
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
    # @param [Object] website Value to be assigned
    def website=(website)
      if !website.nil? && website.to_s.length > 255
        fail ArgumentError, 'invalid value for "website", the character length must be smaller than or equal to 255.'
      end

      if !website.nil? && website.to_s.length < 0
        fail ArgumentError, 'invalid value for "website", the character length must be great than or equal to 0.'
      end

      @website = website
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          group_type == o.group_type &&
          name == o.name &&
          logo == o.logo &&
          email == o.email &&
          phone == o.phone &&
          website == o.website &&
          is_brokerage_or_brokerage_agent == o.is_brokerage_or_brokerage_agent &&
          social_profiles == o.social_profiles &&
          agent_properties == o.agent_properties &&
          users == o.users &&
          default_order_form == o.default_order_form &&
          order_forms == o.order_forms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, group_type, name, logo, email, phone, website, is_brokerage_or_brokerage_agent, social_profiles, agent_properties, users, default_order_form, order_forms].hash
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
