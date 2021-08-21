=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # An unconfirmed appointment.
  class UnconfirmedAppointment
    # The ID of the appointment.
    attr_accessor :id

    # The title of the appointment.
    attr_accessor :title

    # The multi-line description of the appointment.
    attr_accessor :description

    attr_accessor :order

    # Users attached to the appointment.
    attr_accessor :users

    # The type of preferred scheduling information provided by a customer to aid in scheduling this appointment.
    attr_accessor :preference_type

    # A preferred date and time (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME. 
    attr_accessor :preferred_start_at

    # A preferred date (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME_OF_DAY. 
    attr_accessor :preferred_start_at_day

    # A preferred time of day for when the appointment could start. Only returned if unconfirmed appointment's preference type is TIME_OF_DAY. 
    attr_accessor :preferred_start_at_time_of_day

    # The estimated length of the appointment in minutes, if available.
    attr_accessor :duration

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
        :'title' => :'title',
        :'description' => :'description',
        :'order' => :'order',
        :'users' => :'users',
        :'preference_type' => :'preference_type',
        :'preferred_start_at' => :'preferred_start_at',
        :'preferred_start_at_day' => :'preferred_start_at_day',
        :'preferred_start_at_time_of_day' => :'preferred_start_at_time_of_day',
        :'duration' => :'duration'
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
        :'title' => :'String',
        :'description' => :'String',
        :'order' => :'Order',
        :'users' => :'Array<User>',
        :'preference_type' => :'String',
        :'preferred_start_at' => :'Time',
        :'preferred_start_at_day' => :'Date',
        :'preferred_start_at_time_of_day' => :'String',
        :'duration' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'description',
        :'users',
        :'preference_type',
        :'preferred_start_at',
        :'preferred_start_at_day',
        :'preferred_start_at_time_of_day',
        :'duration'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::UnconfirmedAppointment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::UnconfirmedAppointment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.key?(:'preference_type')
        self.preference_type = attributes[:'preference_type']
      end

      if attributes.key?(:'preferred_start_at')
        self.preferred_start_at = attributes[:'preferred_start_at']
      end

      if attributes.key?(:'preferred_start_at_day')
        self.preferred_start_at_day = attributes[:'preferred_start_at_day']
      end

      if attributes.key?(:'preferred_start_at_time_of_day')
        self.preferred_start_at_time_of_day = attributes[:'preferred_start_at_time_of_day']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
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

      if !@title.nil? && @title.to_s.length > 65536
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 65536.')
      end

      if !@title.nil? && @title.to_s.length < 0
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 0.')
      end

      if !@description.nil? && @description.to_s.length > 65536
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 65536.')
      end

      if !@description.nil? && @description.to_s.length < 0
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 0.')
      end

      if !@preference_type.nil? && @preference_type.to_s.length > 255
        invalid_properties.push('invalid value for "preference_type", the character length must be smaller than or equal to 255.')
      end

      if !@preference_type.nil? && @preference_type.to_s.length < 0
        invalid_properties.push('invalid value for "preference_type", the character length must be great than or equal to 0.')
      end

      if !@preferred_start_at.nil? && @preferred_start_at.to_s.length > 255
        invalid_properties.push('invalid value for "preferred_start_at", the character length must be smaller than or equal to 255.')
      end

      if !@preferred_start_at.nil? && @preferred_start_at.to_s.length < 0
        invalid_properties.push('invalid value for "preferred_start_at", the character length must be great than or equal to 0.')
      end

      if !@preferred_start_at_day.nil? && @preferred_start_at_day.to_s.length > 255
        invalid_properties.push('invalid value for "preferred_start_at_day", the character length must be smaller than or equal to 255.')
      end

      if !@preferred_start_at_day.nil? && @preferred_start_at_day.to_s.length < 0
        invalid_properties.push('invalid value for "preferred_start_at_day", the character length must be great than or equal to 0.')
      end

      if !@preferred_start_at_time_of_day.nil? && @preferred_start_at_time_of_day.to_s.length > 255
        invalid_properties.push('invalid value for "preferred_start_at_time_of_day", the character length must be smaller than or equal to 255.')
      end

      if !@preferred_start_at_time_of_day.nil? && @preferred_start_at_time_of_day.to_s.length < 0
        invalid_properties.push('invalid value for "preferred_start_at_time_of_day", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if !@title.nil? && @title.to_s.length > 65536
      return false if !@title.nil? && @title.to_s.length < 0
      return false if !@description.nil? && @description.to_s.length > 65536
      return false if !@description.nil? && @description.to_s.length < 0
      preference_type_validator = EnumAttributeValidator.new('String', ["ASAP", "TIME", "TIME_OF_DAY"])
      return false unless preference_type_validator.valid?(@preference_type)
      return false if !@preference_type.nil? && @preference_type.to_s.length > 255
      return false if !@preference_type.nil? && @preference_type.to_s.length < 0
      return false if !@preferred_start_at.nil? && @preferred_start_at.to_s.length > 255
      return false if !@preferred_start_at.nil? && @preferred_start_at.to_s.length < 0
      return false if !@preferred_start_at_day.nil? && @preferred_start_at_day.to_s.length > 255
      return false if !@preferred_start_at_day.nil? && @preferred_start_at_day.to_s.length < 0
      preferred_start_at_time_of_day_validator = EnumAttributeValidator.new('String', ["MORNING", "AFTERNOON", "TWILIGHT"])
      return false unless preferred_start_at_time_of_day_validator.valid?(@preferred_start_at_time_of_day)
      return false if !@preferred_start_at_time_of_day.nil? && @preferred_start_at_time_of_day.to_s.length > 255
      return false if !@preferred_start_at_time_of_day.nil? && @preferred_start_at_time_of_day.to_s.length < 0
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
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 65536
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 65536.'
      end

      if !title.nil? && title.to_s.length < 0
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 0.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 65536
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 65536.'
      end

      if !description.nil? && description.to_s.length < 0
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 0.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preference_type Object to be assigned
    def preference_type=(preference_type)
      validator = EnumAttributeValidator.new('String', ["ASAP", "TIME", "TIME_OF_DAY"])
      unless validator.valid?(preference_type)
        fail ArgumentError, "invalid value for \"preference_type\", must be one of #{validator.allowable_values}."
      end
      @preference_type = preference_type
    end

    # Custom attribute writer method with validation
    # @param [Object] preferred_start_at Value to be assigned
    def preferred_start_at=(preferred_start_at)
      if !preferred_start_at.nil? && preferred_start_at.to_s.length > 255
        fail ArgumentError, 'invalid value for "preferred_start_at", the character length must be smaller than or equal to 255.'
      end

      if !preferred_start_at.nil? && preferred_start_at.to_s.length < 0
        fail ArgumentError, 'invalid value for "preferred_start_at", the character length must be great than or equal to 0.'
      end

      @preferred_start_at = preferred_start_at
    end

    # Custom attribute writer method with validation
    # @param [Object] preferred_start_at_day Value to be assigned
    def preferred_start_at_day=(preferred_start_at_day)
      if !preferred_start_at_day.nil? && preferred_start_at_day.to_s.length > 255
        fail ArgumentError, 'invalid value for "preferred_start_at_day", the character length must be smaller than or equal to 255.'
      end

      if !preferred_start_at_day.nil? && preferred_start_at_day.to_s.length < 0
        fail ArgumentError, 'invalid value for "preferred_start_at_day", the character length must be great than or equal to 0.'
      end

      @preferred_start_at_day = preferred_start_at_day
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_start_at_time_of_day Object to be assigned
    def preferred_start_at_time_of_day=(preferred_start_at_time_of_day)
      validator = EnumAttributeValidator.new('String', ["MORNING", "AFTERNOON", "TWILIGHT"])
      unless validator.valid?(preferred_start_at_time_of_day)
        fail ArgumentError, "invalid value for \"preferred_start_at_time_of_day\", must be one of #{validator.allowable_values}."
      end
      @preferred_start_at_time_of_day = preferred_start_at_time_of_day
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          description == o.description &&
          order == o.order &&
          users == o.users &&
          preference_type == o.preference_type &&
          preferred_start_at == o.preferred_start_at &&
          preferred_start_at_day == o.preferred_start_at_day &&
          preferred_start_at_time_of_day == o.preferred_start_at_time_of_day &&
          duration == o.duration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, description, order, users, preference_type, preferred_start_at, preferred_start_at_day, preferred_start_at_time_of_day, duration].hash
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
