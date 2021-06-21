=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A payment request for some content or service.
  class Order
    # ID of the order.
    attr_accessor :id

    # A vanity id to be displayed for the order. For example, \"Order #1000\".
    attr_accessor :display_id

    # The total price of the order given in cents.
    attr_accessor :total_price_cents

    attr_accessor :currency

    # The payment status of the order.
    attr_accessor :payment_status

    # A URL for to pay for the order.
    attr_accessor :payment_url

    attr_accessor :listing

    # The fulfillment status of the order.
    attr_accessor :fulfillment_status

    # A URL to see the order's status.
    attr_accessor :status_url

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
        :'display_id' => :'display_id',
        :'total_price_cents' => :'total_price_cents',
        :'currency' => :'currency',
        :'payment_status' => :'payment_status',
        :'payment_url' => :'payment_url',
        :'listing' => :'listing',
        :'fulfillment_status' => :'fulfillment_status',
        :'status_url' => :'status_url'
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
        :'display_id' => :'Integer',
        :'total_price_cents' => :'Integer',
        :'currency' => :'Currency',
        :'payment_status' => :'String',
        :'payment_url' => :'String',
        :'listing' => :'PartialListing',
        :'fulfillment_status' => :'String',
        :'status_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'payment_url',
        :'status_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::Order` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::Order`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'display_id')
        self.display_id = attributes[:'display_id']
      end

      if attributes.key?(:'total_price_cents')
        self.total_price_cents = attributes[:'total_price_cents']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'payment_url')
        self.payment_url = attributes[:'payment_url']
      end

      if attributes.key?(:'listing')
        self.listing = attributes[:'listing']
      end

      if attributes.key?(:'fulfillment_status')
        self.fulfillment_status = attributes[:'fulfillment_status']
      end

      if attributes.key?(:'status_url')
        self.status_url = attributes[:'status_url']
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

      if @display_id.nil?
        invalid_properties.push('invalid value for "display_id", display_id cannot be nil.')
      end

      if @total_price_cents.nil?
        invalid_properties.push('invalid value for "total_price_cents", total_price_cents cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @payment_status.nil?
        invalid_properties.push('invalid value for "payment_status", payment_status cannot be nil.')
      end

      if @payment_status.to_s.length > 255
        invalid_properties.push('invalid value for "payment_status", the character length must be smaller than or equal to 255.')
      end

      if @payment_status.to_s.length < 0
        invalid_properties.push('invalid value for "payment_status", the character length must be great than or equal to 0.')
      end

      if !@payment_url.nil? && @payment_url.to_s.length > 65535
        invalid_properties.push('invalid value for "payment_url", the character length must be smaller than or equal to 65535.')
      end

      if !@payment_url.nil? && @payment_url.to_s.length < 0
        invalid_properties.push('invalid value for "payment_url", the character length must be great than or equal to 0.')
      end

      if @fulfillment_status.nil?
        invalid_properties.push('invalid value for "fulfillment_status", fulfillment_status cannot be nil.')
      end

      if @fulfillment_status.to_s.length > 255
        invalid_properties.push('invalid value for "fulfillment_status", the character length must be smaller than or equal to 255.')
      end

      if @fulfillment_status.to_s.length < 0
        invalid_properties.push('invalid value for "fulfillment_status", the character length must be great than or equal to 0.')
      end

      if !@status_url.nil? && @status_url.to_s.length > 65535
        invalid_properties.push('invalid value for "status_url", the character length must be smaller than or equal to 65535.')
      end

      if !@status_url.nil? && @status_url.to_s.length < 0
        invalid_properties.push('invalid value for "status_url", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @display_id.nil?
      return false if @total_price_cents.nil?
      return false if @currency.nil?
      return false if @payment_status.nil?
      payment_status_validator = EnumAttributeValidator.new('String', ["paid", "unpaid"])
      return false unless payment_status_validator.valid?(@payment_status)
      return false if @payment_status.to_s.length > 255
      return false if @payment_status.to_s.length < 0
      return false if !@payment_url.nil? && @payment_url.to_s.length > 65535
      return false if !@payment_url.nil? && @payment_url.to_s.length < 0
      return false if @fulfillment_status.nil?
      fulfillment_status_validator = EnumAttributeValidator.new('String', ["fulfilled", "unfulfilled"])
      return false unless fulfillment_status_validator.valid?(@fulfillment_status)
      return false if @fulfillment_status.to_s.length > 255
      return false if @fulfillment_status.to_s.length < 0
      return false if !@status_url.nil? && @status_url.to_s.length > 65535
      return false if !@status_url.nil? && @status_url.to_s.length < 0
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
    # @param [Object] payment_status Object to be assigned
    def payment_status=(payment_status)
      validator = EnumAttributeValidator.new('String', ["paid", "unpaid"])
      unless validator.valid?(payment_status)
        fail ArgumentError, "invalid value for \"payment_status\", must be one of #{validator.allowable_values}."
      end
      @payment_status = payment_status
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_url Value to be assigned
    def payment_url=(payment_url)
      if !payment_url.nil? && payment_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "payment_url", the character length must be smaller than or equal to 65535.'
      end

      if !payment_url.nil? && payment_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_url", the character length must be great than or equal to 0.'
      end

      @payment_url = payment_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fulfillment_status Object to be assigned
    def fulfillment_status=(fulfillment_status)
      validator = EnumAttributeValidator.new('String', ["fulfilled", "unfulfilled"])
      unless validator.valid?(fulfillment_status)
        fail ArgumentError, "invalid value for \"fulfillment_status\", must be one of #{validator.allowable_values}."
      end
      @fulfillment_status = fulfillment_status
    end

    # Custom attribute writer method with validation
    # @param [Object] status_url Value to be assigned
    def status_url=(status_url)
      if !status_url.nil? && status_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "status_url", the character length must be smaller than or equal to 65535.'
      end

      if !status_url.nil? && status_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "status_url", the character length must be great than or equal to 0.'
      end

      @status_url = status_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          display_id == o.display_id &&
          total_price_cents == o.total_price_cents &&
          currency == o.currency &&
          payment_status == o.payment_status &&
          payment_url == o.payment_url &&
          listing == o.listing &&
          fulfillment_status == o.fulfillment_status &&
          status_url == o.status_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, display_id, total_price_cents, currency, payment_status, payment_url, listing, fulfillment_status, status_url].hash
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
