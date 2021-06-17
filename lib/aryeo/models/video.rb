=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A recording of moving visual images. Provided either as a download URL (MP4) or a link (e.g. YouTube, Vimeo).
  class Video
    # ID of the video.
    attr_accessor :id

    # The title of the video given by the uploading user.
    attr_accessor :title

    # The display type determines if the video is branded or unbranded (can also be none or both). This affects whether the video is displayed on branded or unbranded marketing materials such as the property website.
    attr_accessor :display_type

    # The original upload source of the video, used to determine how to handle the playback_url of the video and other display properties. 
    attr_accessor :source_type

    # Thumbnail URL for the video.
    attr_accessor :thumbnail_url

    # A URL linking to the video.
    attr_accessor :playback_url

    # A URL for downloading the video.
    attr_accessor :download_url

    # The video's runtime in seconds.
    attr_accessor :seconds

    # Aryeo iFrame player URL
    attr_accessor :share_url

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
        :'display_type' => :'display_type',
        :'source_type' => :'source_type',
        :'thumbnail_url' => :'thumbnail_url',
        :'playback_url' => :'playback_url',
        :'download_url' => :'download_url',
        :'seconds' => :'seconds',
        :'share_url' => :'share_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'display_type' => :'String',
        :'source_type' => :'String',
        :'thumbnail_url' => :'String',
        :'playback_url' => :'String',
        :'download_url' => :'String',
        :'seconds' => :'Integer',
        :'share_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'download_url',
        :'seconds',
        :'share_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::Video` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::Video`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'display_type')
        self.display_type = attributes[:'display_type']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'playback_url')
        self.playback_url = attributes[:'playback_url']
      end

      if attributes.key?(:'download_url')
        self.download_url = attributes[:'download_url']
      end

      if attributes.key?(:'seconds')
        self.seconds = attributes[:'seconds']
      end

      if attributes.key?(:'share_url')
        self.share_url = attributes[:'share_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if !@title.nil? && @title.to_s.length > 255
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 255.')
      end

      if !@title.nil? && @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if @display_type.nil?
        invalid_properties.push('invalid value for "display_type", display_type cannot be nil.')
      end

      if @display_type.to_s.length > 255
        invalid_properties.push('invalid value for "display_type", the character length must be smaller than or equal to 255.')
      end

      if @display_type.to_s.length < 1
        invalid_properties.push('invalid value for "display_type", the character length must be great than or equal to 1.')
      end

      if @source_type.nil?
        invalid_properties.push('invalid value for "source_type", source_type cannot be nil.')
      end

      if @source_type.to_s.length > 255
        invalid_properties.push('invalid value for "source_type", the character length must be smaller than or equal to 255.')
      end

      if @source_type.to_s.length < 1
        invalid_properties.push('invalid value for "source_type", the character length must be great than or equal to 1.')
      end

      if @thumbnail_url.nil?
        invalid_properties.push('invalid value for "thumbnail_url", thumbnail_url cannot be nil.')
      end

      if @thumbnail_url.to_s.length > 65535
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be smaller than or equal to 65535.')
      end

      if @thumbnail_url.to_s.length < 0
        invalid_properties.push('invalid value for "thumbnail_url", the character length must be great than or equal to 0.')
      end

      if @playback_url.nil?
        invalid_properties.push('invalid value for "playback_url", playback_url cannot be nil.')
      end

      if @playback_url.to_s.length > 65535
        invalid_properties.push('invalid value for "playback_url", the character length must be smaller than or equal to 65535.')
      end

      if @playback_url.to_s.length < 0
        invalid_properties.push('invalid value for "playback_url", the character length must be great than or equal to 0.')
      end

      if !@download_url.nil? && @download_url.to_s.length > 65535
        invalid_properties.push('invalid value for "download_url", the character length must be smaller than or equal to 65535.')
      end

      if !@download_url.nil? && @download_url.to_s.length < 1
        invalid_properties.push('invalid value for "download_url", the character length must be great than or equal to 1.')
      end

      if !@share_url.nil? && @share_url.to_s.length > 65535
        invalid_properties.push('invalid value for "share_url", the character length must be smaller than or equal to 65535.')
      end

      if !@share_url.nil? && @share_url.to_s.length < 0
        invalid_properties.push('invalid value for "share_url", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if !@title.nil? && @title.to_s.length > 255
      return false if !@title.nil? && @title.to_s.length < 1
      return false if @display_type.nil?
      display_type_validator = EnumAttributeValidator.new('String', ["branded", "unbranded", "both", "none"])
      return false unless display_type_validator.valid?(@display_type)
      return false if @display_type.to_s.length > 255
      return false if @display_type.to_s.length < 1
      return false if @source_type.nil?
      source_type_validator = EnumAttributeValidator.new('String', ["youtube", "vimeo", "optimized", "uploaded", "link"])
      return false unless source_type_validator.valid?(@source_type)
      return false if @source_type.to_s.length > 255
      return false if @source_type.to_s.length < 1
      return false if @thumbnail_url.nil?
      return false if @thumbnail_url.to_s.length > 65535
      return false if @thumbnail_url.to_s.length < 0
      return false if @playback_url.nil?
      return false if @playback_url.to_s.length > 65535
      return false if @playback_url.to_s.length < 0
      return false if !@download_url.nil? && @download_url.to_s.length > 65535
      return false if !@download_url.nil? && @download_url.to_s.length < 1
      return false if !@share_url.nil? && @share_url.to_s.length > 65535
      return false if !@share_url.nil? && @share_url.to_s.length < 0
      true
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_type Object to be assigned
    def display_type=(display_type)
      validator = EnumAttributeValidator.new('String', ["branded", "unbranded", "both", "none"])
      unless validator.valid?(display_type)
        fail ArgumentError, "invalid value for \"display_type\", must be one of #{validator.allowable_values}."
      end
      @display_type = display_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      validator = EnumAttributeValidator.new('String', ["youtube", "vimeo", "optimized", "uploaded", "link"])
      unless validator.valid?(source_type)
        fail ArgumentError, "invalid value for \"source_type\", must be one of #{validator.allowable_values}."
      end
      @source_type = source_type
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

      if thumbnail_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "thumbnail_url", the character length must be great than or equal to 0.'
      end

      @thumbnail_url = thumbnail_url
    end

    # Custom attribute writer method with validation
    # @param [Object] playback_url Value to be assigned
    def playback_url=(playback_url)
      if playback_url.nil?
        fail ArgumentError, 'playback_url cannot be nil'
      end

      if playback_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "playback_url", the character length must be smaller than or equal to 65535.'
      end

      if playback_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "playback_url", the character length must be great than or equal to 0.'
      end

      @playback_url = playback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] download_url Value to be assigned
    def download_url=(download_url)
      if !download_url.nil? && download_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "download_url", the character length must be smaller than or equal to 65535.'
      end

      if !download_url.nil? && download_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "download_url", the character length must be great than or equal to 1.'
      end

      @download_url = download_url
    end

    # Custom attribute writer method with validation
    # @param [Object] share_url Value to be assigned
    def share_url=(share_url)
      if !share_url.nil? && share_url.to_s.length > 65535
        fail ArgumentError, 'invalid value for "share_url", the character length must be smaller than or equal to 65535.'
      end

      if !share_url.nil? && share_url.to_s.length < 0
        fail ArgumentError, 'invalid value for "share_url", the character length must be great than or equal to 0.'
      end

      @share_url = share_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          display_type == o.display_type &&
          source_type == o.source_type &&
          thumbnail_url == o.thumbnail_url &&
          playback_url == o.playback_url &&
          download_url == o.download_url &&
          seconds == o.seconds &&
          share_url == o.share_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, display_type, source_type, thumbnail_url, playback_url, download_url, seconds, share_url].hash
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
