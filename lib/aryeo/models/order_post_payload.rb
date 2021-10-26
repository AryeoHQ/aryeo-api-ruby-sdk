=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # Payload for creating an order.
  class OrderPostPayload
    # The fulfillment status of the order. Defaults to \"UNFULFILLED\".
    attr_accessor :fulfillment_status

    # Internal notes that will be attached to the order. Viewable only by the team.
    attr_accessor :internal_notes

    # The payment status of the order. Defaults to \"UNPAID\". 
    attr_accessor :payment_status

    # ID of the address to associate with the order. UUID Version 4.
    attr_accessor :address_id

    # ID of the customer to associate with the order. UUID Version 4.
    attr_accessor :customer_id

    # Indicates if the customer and creator notifications should be sent when creating the order. Requires an address and customer to be set in order for the notifications to be sent.
    attr_accessor :notify

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
        :'fulfillment_status' => :'fulfillment_status',
        :'internal_notes' => :'internal_notes',
        :'payment_status' => :'payment_status',
        :'address_id' => :'address_id',
        :'customer_id' => :'customer_id',
        :'notify' => :'notify'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'fulfillment_status' => :'String',
        :'internal_notes' => :'String',
        :'payment_status' => :'String',
        :'address_id' => :'String',
        :'customer_id' => :'String',
        :'notify' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'fulfillment_status',
        :'internal_notes',
        :'payment_status',
        :'notify'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::OrderPostPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::OrderPostPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'fulfillment_status')
        self.fulfillment_status = attributes[:'fulfillment_status']
      end

      if attributes.key?(:'internal_notes')
        self.internal_notes = attributes[:'internal_notes']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'address_id')
        self.address_id = attributes[:'address_id']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'notify')
        self.notify = attributes[:'notify']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@fulfillment_status.nil? && @fulfillment_status.to_s.length > 255
        invalid_properties.push('invalid value for "fulfillment_status", the character length must be smaller than or equal to 255.')
      end

      if !@fulfillment_status.nil? && @fulfillment_status.to_s.length < 0
        invalid_properties.push('invalid value for "fulfillment_status", the character length must be great than or equal to 0.')
      end

      if !@internal_notes.nil? && @internal_notes.to_s.length > 2550
        invalid_properties.push('invalid value for "internal_notes", the character length must be smaller than or equal to 2550.')
      end

      if !@internal_notes.nil? && @internal_notes.to_s.length < 0
        invalid_properties.push('invalid value for "internal_notes", the character length must be great than or equal to 0.')
      end

      if !@payment_status.nil? && @payment_status.to_s.length > 255
        invalid_properties.push('invalid value for "payment_status", the character length must be smaller than or equal to 255.')
      end

      if !@payment_status.nil? && @payment_status.to_s.length < 0
        invalid_properties.push('invalid value for "payment_status", the character length must be great than or equal to 0.')
      end

      if !@address_id.nil? && @address_id.to_s.length > 36
        invalid_properties.push('invalid value for "address_id", the character length must be smaller than or equal to 36.')
      end

      if !@address_id.nil? && @address_id.to_s.length < 36
        invalid_properties.push('invalid value for "address_id", the character length must be great than or equal to 36.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length > 36
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 36.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length < 36
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 36.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      fulfillment_status_validator = EnumAttributeValidator.new('String', ["FULFILLED", "UNFULFILLED"])
      return false unless fulfillment_status_validator.valid?(@fulfillment_status)
      return false if !@fulfillment_status.nil? && @fulfillment_status.to_s.length > 255
      return false if !@fulfillment_status.nil? && @fulfillment_status.to_s.length < 0
      return false if !@internal_notes.nil? && @internal_notes.to_s.length > 2550
      return false if !@internal_notes.nil? && @internal_notes.to_s.length < 0
      payment_status_validator = EnumAttributeValidator.new('String', ["PAID", "UNPAID"])
      return false unless payment_status_validator.valid?(@payment_status)
      return false if !@payment_status.nil? && @payment_status.to_s.length > 255
      return false if !@payment_status.nil? && @payment_status.to_s.length < 0
      return false if !@address_id.nil? && @address_id.to_s.length > 36
      return false if !@address_id.nil? && @address_id.to_s.length < 36
      return false if !@customer_id.nil? && @customer_id.to_s.length > 36
      return false if !@customer_id.nil? && @customer_id.to_s.length < 36
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fulfillment_status Object to be assigned
    def fulfillment_status=(fulfillment_status)
      validator = EnumAttributeValidator.new('String', ["FULFILLED", "UNFULFILLED"])
      unless validator.valid?(fulfillment_status)
        fail ArgumentError, "invalid value for \"fulfillment_status\", must be one of #{validator.allowable_values}."
      end
      @fulfillment_status = fulfillment_status
    end

    # Custom attribute writer method with validation
    # @param [Object] internal_notes Value to be assigned
    def internal_notes=(internal_notes)
      if !internal_notes.nil? && internal_notes.to_s.length > 2550
        fail ArgumentError, 'invalid value for "internal_notes", the character length must be smaller than or equal to 2550.'
      end

      if !internal_notes.nil? && internal_notes.to_s.length < 0
        fail ArgumentError, 'invalid value for "internal_notes", the character length must be great than or equal to 0.'
      end

      @internal_notes = internal_notes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_status Object to be assigned
    def payment_status=(payment_status)
      validator = EnumAttributeValidator.new('String', ["PAID", "UNPAID"])
      unless validator.valid?(payment_status)
        fail ArgumentError, "invalid value for \"payment_status\", must be one of #{validator.allowable_values}."
      end
      @payment_status = payment_status
    end

    # Custom attribute writer method with validation
    # @param [Object] address_id Value to be assigned
    def address_id=(address_id)
      if !address_id.nil? && address_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "address_id", the character length must be smaller than or equal to 36.'
      end

      if !address_id.nil? && address_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "address_id", the character length must be great than or equal to 36.'
      end

      @address_id = address_id
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if !customer_id.nil? && customer_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 36.'
      end

      if !customer_id.nil? && customer_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "customer_id", the character length must be great than or equal to 36.'
      end

      @customer_id = customer_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fulfillment_status == o.fulfillment_status &&
          internal_notes == o.internal_notes &&
          payment_status == o.payment_status &&
          address_id == o.address_id &&
          customer_id == o.customer_id &&
          notify == o.notify
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [fulfillment_status, internal_notes, payment_status, address_id, customer_id, notify].hash
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
