=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A collection of users that can interact with the Aryeo platform. Permissions and properties are determined based on the group's type which can be creator, agent, or brokerage.
  class Group
    # String representing the object’s type. Objects of the same type share the same schema.
    attr_accessor :object

    # ID of the group. UUID Version 4.
    attr_accessor :id

    # The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned.
    attr_accessor :type

    # The name of the group.
    attr_accessor :name

    # The email address of a group.
    attr_accessor :email

    # A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens).
    attr_accessor :phone

    # The website URL of a group.
    attr_accessor :website_url

    # The logo URL of a group.
    attr_accessor :logo_url

    # The profile image URL of a real estate agent. Only returned if group's type is AGENT.
    attr_accessor :avatar_url

    # The name of the brokerage or team of a real estate agent. Only returned if group's type is AGENT.
    attr_accessor :office_name

    # The license number of a real estate agent. Only returned if group's type is AGENT.
    attr_accessor :license_number

    attr_accessor :social_profiles

    attr_accessor :default_order_form

    # An array of order forms a vendor group provides for placing orders. Only returned if group's type is CREATOR. 
    attr_accessor :order_forms

    attr_accessor :owner

    # The Aryeo users associated with this group.
    attr_accessor :users

    # Does this group represent a brokerage or an agent who belongs to a brokerage?
    attr_accessor :is_brokerage_or_brokerage_agent

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
        :'object' => :'object',
        :'id' => :'id',
        :'type' => :'type',
        :'name' => :'name',
        :'email' => :'email',
        :'phone' => :'phone',
        :'website_url' => :'website_url',
        :'logo_url' => :'logo_url',
        :'avatar_url' => :'avatar_url',
        :'office_name' => :'office_name',
        :'license_number' => :'license_number',
        :'social_profiles' => :'social_profiles',
        :'default_order_form' => :'default_order_form',
        :'order_forms' => :'order_forms',
        :'owner' => :'owner',
        :'users' => :'users',
        :'is_brokerage_or_brokerage_agent' => :'is_brokerage_or_brokerage_agent'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'id' => :'String',
        :'type' => :'String',
        :'name' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'website_url' => :'String',
        :'logo_url' => :'String',
        :'avatar_url' => :'String',
        :'office_name' => :'String',
        :'license_number' => :'String',
        :'social_profiles' => :'SocialProfiles',
        :'default_order_form' => :'OrderForm',
        :'order_forms' => :'Array<OrderForm>',
        :'owner' => :'User',
        :'users' => :'Array<User>',
        :'is_brokerage_or_brokerage_agent' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'email',
        :'phone',
        :'website_url',
        :'logo_url',
        :'avatar_url',
        :'office_name',
        :'license_number',
        :'order_forms',
        :'users',
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

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'website_url')
        self.website_url = attributes[:'website_url']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.key?(:'office_name')
        self.office_name = attributes[:'office_name']
      end

      if attributes.key?(:'license_number')
        self.license_number = attributes[:'license_number']
      end

      if attributes.key?(:'social_profiles')
        self.social_profiles = attributes[:'social_profiles']
      end

      if attributes.key?(:'default_order_form')
        self.default_order_form = attributes[:'default_order_form']
      end

      if attributes.key?(:'order_forms')
        if (value = attributes[:'order_forms']).is_a?(Array)
          self.order_forms = value
        end
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.key?(:'is_brokerage_or_brokerage_agent')
        self.is_brokerage_or_brokerage_agent = attributes[:'is_brokerage_or_brokerage_agent']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@object.nil? && @object.to_s.length > 100
        invalid_properties.push('invalid value for "object", the character length must be smaller than or equal to 100.')
      end

      if !@object.nil? && @object.to_s.length < 1
        invalid_properties.push('invalid value for "object", the character length must be great than or equal to 1.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 36
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 36.')
      end

      if @id.to_s.length < 36
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 36.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @type.to_s.length > 255
        invalid_properties.push('invalid value for "type", the character length must be smaller than or equal to 255.')
      end

      if @type.to_s.length < 0
        invalid_properties.push('invalid value for "type", the character length must be great than or equal to 0.')
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

      if !@website_url.nil? && @website_url.to_s.length > 255
        invalid_properties.push('invalid value for "website_url", the character length must be smaller than or equal to 255.')
      end

      if !@website_url.nil? && @website_url.to_s.length < 0
        invalid_properties.push('invalid value for "website_url", the character length must be great than or equal to 0.')
      end

      if !@logo_url.nil? && @logo_url.to_s.length > 255
        invalid_properties.push('invalid value for "logo_url", the character length must be smaller than or equal to 255.')
      end

      if !@logo_url.nil? && @logo_url.to_s.length < 0
        invalid_properties.push('invalid value for "logo_url", the character length must be great than or equal to 0.')
      end

      if !@avatar_url.nil? && @avatar_url.to_s.length > 255
        invalid_properties.push('invalid value for "avatar_url", the character length must be smaller than or equal to 255.')
      end

      if !@avatar_url.nil? && @avatar_url.to_s.length < 0
        invalid_properties.push('invalid value for "avatar_url", the character length must be great than or equal to 0.')
      end

      if !@office_name.nil? && @office_name.to_s.length > 255
        invalid_properties.push('invalid value for "office_name", the character length must be smaller than or equal to 255.')
      end

      if !@office_name.nil? && @office_name.to_s.length < 0
        invalid_properties.push('invalid value for "office_name", the character length must be great than or equal to 0.')
      end

      if !@license_number.nil? && @license_number.to_s.length > 255
        invalid_properties.push('invalid value for "license_number", the character length must be smaller than or equal to 255.')
      end

      if !@license_number.nil? && @license_number.to_s.length < 0
        invalid_properties.push('invalid value for "license_number", the character length must be great than or equal to 0.')
      end

      if @is_brokerage_or_brokerage_agent.nil?
        invalid_properties.push('invalid value for "is_brokerage_or_brokerage_agent", is_brokerage_or_brokerage_agent cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@object.nil? && @object.to_s.length > 100
      return false if !@object.nil? && @object.to_s.length < 1
      return false if @id.nil?
      return false if @id.to_s.length > 36
      return false if @id.to_s.length < 36
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["CREATOR", "AGENT", "BROKERAGE"])
      return false unless type_validator.valid?(@type)
      return false if @type.to_s.length > 255
      return false if @type.to_s.length < 0
      return false if @name.nil?
      return false if @name.to_s.length > 255
      return false if @name.to_s.length < 0
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email.nil? && @email.to_s.length < 0
      return false if !@phone.nil? && @phone.to_s.length > 255
      return false if !@phone.nil? && @phone.to_s.length < 0
      return false if !@website_url.nil? && @website_url.to_s.length > 255
      return false if !@website_url.nil? && @website_url.to_s.length < 0
      return false if !@logo_url.nil? && @logo_url.to_s.length > 255
      return false if !@logo_url.nil? && @logo_url.to_s.length < 0
      return false if !@avatar_url.nil? && @avatar_url.to_s.length > 255
      return false if !@avatar_url.nil? && @avatar_url.to_s.length < 0
      return false if !@office_name.nil? && @office_name.to_s.length > 255
      return false if !@office_name.nil? && @office_name.to_s.length < 0
      return false if !@license_number.nil? && @license_number.to_s.length > 255
      return false if !@license_number.nil? && @license_number.to_s.length < 0
      return false if @is_brokerage_or_brokerage_agent.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] object Value to be assigned
    def object=(object)
      if !object.nil? && object.to_s.length > 100
        fail ArgumentError, 'invalid value for "object", the character length must be smaller than or equal to 100.'
      end

      if !object.nil? && object.to_s.length < 1
        fail ArgumentError, 'invalid value for "object", the character length must be great than or equal to 1.'
      end

      @object = object
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["CREATOR", "AGENT", "BROKERAGE"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
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
    # @param [Object] website_url Value to be assigned
    def website_url=(website_url)
      if !website_url.nil? && website_url.to_s.length > 255
        fail ArgumentError, 'invalid value for "website_url", the character length must be smaller than or equal to 255.'
      end

      if !website_url.nil? && website_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "website_url", the character length must be great than or equal to 0.'
      end

      @website_url = website_url
    end

    # Custom attribute writer method with validation
    # @param [Object] logo_url Value to be assigned
    def logo_url=(logo_url)
      if !logo_url.nil? && logo_url.to_s.length > 255
        fail ArgumentError, 'invalid value for "logo_url", the character length must be smaller than or equal to 255.'
      end

      if !logo_url.nil? && logo_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "logo_url", the character length must be great than or equal to 0.'
      end

      @logo_url = logo_url
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
    # @param [Object] office_name Value to be assigned
    def office_name=(office_name)
      if !office_name.nil? && office_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "office_name", the character length must be smaller than or equal to 255.'
      end

      if !office_name.nil? && office_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "office_name", the character length must be great than or equal to 0.'
      end

      @office_name = office_name
    end

    # Custom attribute writer method with validation
    # @param [Object] license_number Value to be assigned
    def license_number=(license_number)
      if !license_number.nil? && license_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "license_number", the character length must be smaller than or equal to 255.'
      end

      if !license_number.nil? && license_number.to_s.length < 0
        fail ArgumentError, 'invalid value for "license_number", the character length must be great than or equal to 0.'
      end

      @license_number = license_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          type == o.type &&
          name == o.name &&
          email == o.email &&
          phone == o.phone &&
          website_url == o.website_url &&
          logo_url == o.logo_url &&
          avatar_url == o.avatar_url &&
          office_name == o.office_name &&
          license_number == o.license_number &&
          social_profiles == o.social_profiles &&
          default_order_form == o.default_order_form &&
          order_forms == o.order_forms &&
          owner == o.owner &&
          users == o.users &&
          is_brokerage_or_brokerage_agent == o.is_brokerage_or_brokerage_agent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, type, name, email, phone, website_url, logo_url, avatar_url, office_name, license_number, social_profiles, default_order_form, order_forms, owner, users, is_brokerage_or_brokerage_agent].hash
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
