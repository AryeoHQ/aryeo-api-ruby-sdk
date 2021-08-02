=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'date'
require 'time'

module Aryeo
  # A street address and additional metadata about a location.
  class Address
    # ID of the address.
    attr_accessor :id

    # The geographic latitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol.
    attr_accessor :latitude

    # The geographic longitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol.
    attr_accessor :longitude

    # The street number portion of a location's address. In some areas, the street number may contain non-numeric characters. This field can also contain extensions and modifiers to the street number, such as \"1/2\" or \"-B\".
    attr_accessor :street_number

    # The street name portion of a location's address.
    attr_accessor :street_name

    # The number or portion of a larger building or complex. Examples are: \"APT G\", \"55\", etc.
    attr_accessor :unit_number

    # The postal code portion of a location's address.
    attr_accessor :postal_code

    # The city of a location's address.
    attr_accessor :city

    # A sub-section or area of a defined city. Examples would be SoHo in New York, NY, Ironbound in Newark, NJ or Inside the Beltway.
    attr_accessor :city_region

    # The County, Parish or other regional authority of the location.
    attr_accessor :county_or_parish

    # The ISO 3166-2 subdivision code for the state or province of the location. For example, “MA” for Massachusetts, United States.
    attr_accessor :state_or_province

    # A sub-section or area of a defined state or province. Examples would be the Keys in FL or Hudson Valley in NY.
    attr_accessor :state_or_province_region

    # The ISO 3166-1 country code for this for the country of the location.
    attr_accessor :country

    # A sub-section or area of a defined country. Examples would be Napa Valley in the US, or the Amalfi Coast in Italy.
    attr_accessor :country_region

    # Unparsed text representation of the address. 
    attr_accessor :unparsed_address

    # Unparsed text representation of the first part of the address, typically including the street number, street name, and unit number if applicable.  
    attr_accessor :unparsed_address_part_one

    # Unparsed text representation of the second part of the address, typically including the city, state or province, and postal code.  
    attr_accessor :unparsed_address_part_two

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'street_number' => :'street_number',
        :'street_name' => :'street_name',
        :'unit_number' => :'unit_number',
        :'postal_code' => :'postal_code',
        :'city' => :'city',
        :'city_region' => :'city_region',
        :'county_or_parish' => :'county_or_parish',
        :'state_or_province' => :'state_or_province',
        :'state_or_province_region' => :'state_or_province_region',
        :'country' => :'country',
        :'country_region' => :'country_region',
        :'unparsed_address' => :'unparsed_address',
        :'unparsed_address_part_one' => :'unparsed_address_part_one',
        :'unparsed_address_part_two' => :'unparsed_address_part_two'
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
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'street_number' => :'String',
        :'street_name' => :'String',
        :'unit_number' => :'String',
        :'postal_code' => :'String',
        :'city' => :'String',
        :'city_region' => :'String',
        :'county_or_parish' => :'String',
        :'state_or_province' => :'String',
        :'state_or_province_region' => :'String',
        :'country' => :'String',
        :'country_region' => :'String',
        :'unparsed_address' => :'String',
        :'unparsed_address_part_one' => :'String',
        :'unparsed_address_part_two' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'street_number',
        :'street_name',
        :'unit_number',
        :'postal_code',
        :'city',
        :'city_region',
        :'county_or_parish',
        :'state_or_province',
        :'state_or_province_region',
        :'country',
        :'country_region',
        :'unparsed_address',
        :'unparsed_address_part_one',
        :'unparsed_address_part_two'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Aryeo::Address` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Aryeo::Address`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.key?(:'street_number')
        self.street_number = attributes[:'street_number']
      end

      if attributes.key?(:'street_name')
        self.street_name = attributes[:'street_name']
      end

      if attributes.key?(:'unit_number')
        self.unit_number = attributes[:'unit_number']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'city_region')
        self.city_region = attributes[:'city_region']
      end

      if attributes.key?(:'county_or_parish')
        self.county_or_parish = attributes[:'county_or_parish']
      end

      if attributes.key?(:'state_or_province')
        self.state_or_province = attributes[:'state_or_province']
      end

      if attributes.key?(:'state_or_province_region')
        self.state_or_province_region = attributes[:'state_or_province_region']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'country_region')
        self.country_region = attributes[:'country_region']
      end

      if attributes.key?(:'unparsed_address')
        self.unparsed_address = attributes[:'unparsed_address']
      end

      if attributes.key?(:'unparsed_address_part_one')
        self.unparsed_address_part_one = attributes[:'unparsed_address_part_one']
      end

      if attributes.key?(:'unparsed_address_part_two')
        self.unparsed_address_part_two = attributes[:'unparsed_address_part_two']
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

      if @latitude.nil?
        invalid_properties.push('invalid value for "latitude", latitude cannot be nil.')
      end

      if @latitude > 180
        invalid_properties.push('invalid value for "latitude", must be smaller than or equal to 180.')
      end

      if @latitude < -180
        invalid_properties.push('invalid value for "latitude", must be greater than or equal to -180.')
      end

      if @longitude.nil?
        invalid_properties.push('invalid value for "longitude", longitude cannot be nil.')
      end

      if @longitude > 180
        invalid_properties.push('invalid value for "longitude", must be smaller than or equal to 180.')
      end

      if @longitude < -180
        invalid_properties.push('invalid value for "longitude", must be greater than or equal to -180.')
      end

      if !@street_number.nil? && @street_number.to_s.length > 255
        invalid_properties.push('invalid value for "street_number", the character length must be smaller than or equal to 255.')
      end

      if !@street_number.nil? && @street_number.to_s.length < 0
        invalid_properties.push('invalid value for "street_number", the character length must be great than or equal to 0.')
      end

      if !@street_name.nil? && @street_name.to_s.length > 255
        invalid_properties.push('invalid value for "street_name", the character length must be smaller than or equal to 255.')
      end

      if !@street_name.nil? && @street_name.to_s.length < 0
        invalid_properties.push('invalid value for "street_name", the character length must be great than or equal to 0.')
      end

      if !@unit_number.nil? && @unit_number.to_s.length > 255
        invalid_properties.push('invalid value for "unit_number", the character length must be smaller than or equal to 255.')
      end

      if !@unit_number.nil? && @unit_number.to_s.length < 0
        invalid_properties.push('invalid value for "unit_number", the character length must be great than or equal to 0.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 255
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 255.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length < 0
        invalid_properties.push('invalid value for "postal_code", the character length must be great than or equal to 0.')
      end

      if !@city.nil? && @city.to_s.length > 255
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 255.')
      end

      if !@city.nil? && @city.to_s.length < 0
        invalid_properties.push('invalid value for "city", the character length must be great than or equal to 0.')
      end

      if !@city_region.nil? && @city_region.to_s.length > 255
        invalid_properties.push('invalid value for "city_region", the character length must be smaller than or equal to 255.')
      end

      if !@city_region.nil? && @city_region.to_s.length < 0
        invalid_properties.push('invalid value for "city_region", the character length must be great than or equal to 0.')
      end

      if !@county_or_parish.nil? && @county_or_parish.to_s.length > 255
        invalid_properties.push('invalid value for "county_or_parish", the character length must be smaller than or equal to 255.')
      end

      if !@county_or_parish.nil? && @county_or_parish.to_s.length < 0
        invalid_properties.push('invalid value for "county_or_parish", the character length must be great than or equal to 0.')
      end

      if !@state_or_province.nil? && @state_or_province.to_s.length > 255
        invalid_properties.push('invalid value for "state_or_province", the character length must be smaller than or equal to 255.')
      end

      if !@state_or_province.nil? && @state_or_province.to_s.length < 0
        invalid_properties.push('invalid value for "state_or_province", the character length must be great than or equal to 0.')
      end

      if !@state_or_province_region.nil? && @state_or_province_region.to_s.length > 255
        invalid_properties.push('invalid value for "state_or_province_region", the character length must be smaller than or equal to 255.')
      end

      if !@state_or_province_region.nil? && @state_or_province_region.to_s.length < 0
        invalid_properties.push('invalid value for "state_or_province_region", the character length must be great than or equal to 0.')
      end

      if !@country.nil? && @country.to_s.length > 255
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 255.')
      end

      if !@country.nil? && @country.to_s.length < 0
        invalid_properties.push('invalid value for "country", the character length must be great than or equal to 0.')
      end

      if !@country_region.nil? && @country_region.to_s.length > 255
        invalid_properties.push('invalid value for "country_region", the character length must be smaller than or equal to 255.')
      end

      if !@country_region.nil? && @country_region.to_s.length < 0
        invalid_properties.push('invalid value for "country_region", the character length must be great than or equal to 0.')
      end

      if !@unparsed_address.nil? && @unparsed_address.to_s.length > 255
        invalid_properties.push('invalid value for "unparsed_address", the character length must be smaller than or equal to 255.')
      end

      if !@unparsed_address.nil? && @unparsed_address.to_s.length < 0
        invalid_properties.push('invalid value for "unparsed_address", the character length must be great than or equal to 0.')
      end

      if !@unparsed_address_part_one.nil? && @unparsed_address_part_one.to_s.length > 255
        invalid_properties.push('invalid value for "unparsed_address_part_one", the character length must be smaller than or equal to 255.')
      end

      if !@unparsed_address_part_one.nil? && @unparsed_address_part_one.to_s.length < 0
        invalid_properties.push('invalid value for "unparsed_address_part_one", the character length must be great than or equal to 0.')
      end

      if !@unparsed_address_part_two.nil? && @unparsed_address_part_two.to_s.length > 255
        invalid_properties.push('invalid value for "unparsed_address_part_two", the character length must be smaller than or equal to 255.')
      end

      if !@unparsed_address_part_two.nil? && @unparsed_address_part_two.to_s.length < 0
        invalid_properties.push('invalid value for "unparsed_address_part_two", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 255
      return false if @id.to_s.length < 0
      return false if @latitude.nil?
      return false if @latitude > 180
      return false if @latitude < -180
      return false if @longitude.nil?
      return false if @longitude > 180
      return false if @longitude < -180
      return false if !@street_number.nil? && @street_number.to_s.length > 255
      return false if !@street_number.nil? && @street_number.to_s.length < 0
      return false if !@street_name.nil? && @street_name.to_s.length > 255
      return false if !@street_name.nil? && @street_name.to_s.length < 0
      return false if !@unit_number.nil? && @unit_number.to_s.length > 255
      return false if !@unit_number.nil? && @unit_number.to_s.length < 0
      return false if !@postal_code.nil? && @postal_code.to_s.length > 255
      return false if !@postal_code.nil? && @postal_code.to_s.length < 0
      return false if !@city.nil? && @city.to_s.length > 255
      return false if !@city.nil? && @city.to_s.length < 0
      return false if !@city_region.nil? && @city_region.to_s.length > 255
      return false if !@city_region.nil? && @city_region.to_s.length < 0
      return false if !@county_or_parish.nil? && @county_or_parish.to_s.length > 255
      return false if !@county_or_parish.nil? && @county_or_parish.to_s.length < 0
      return false if !@state_or_province.nil? && @state_or_province.to_s.length > 255
      return false if !@state_or_province.nil? && @state_or_province.to_s.length < 0
      return false if !@state_or_province_region.nil? && @state_or_province_region.to_s.length > 255
      return false if !@state_or_province_region.nil? && @state_or_province_region.to_s.length < 0
      return false if !@country.nil? && @country.to_s.length > 255
      return false if !@country.nil? && @country.to_s.length < 0
      return false if !@country_region.nil? && @country_region.to_s.length > 255
      return false if !@country_region.nil? && @country_region.to_s.length < 0
      return false if !@unparsed_address.nil? && @unparsed_address.to_s.length > 255
      return false if !@unparsed_address.nil? && @unparsed_address.to_s.length < 0
      return false if !@unparsed_address_part_one.nil? && @unparsed_address_part_one.to_s.length > 255
      return false if !@unparsed_address_part_one.nil? && @unparsed_address_part_one.to_s.length < 0
      return false if !@unparsed_address_part_two.nil? && @unparsed_address_part_two.to_s.length > 255
      return false if !@unparsed_address_part_two.nil? && @unparsed_address_part_two.to_s.length < 0
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
    # @param [Object] latitude Value to be assigned
    def latitude=(latitude)
      if latitude.nil?
        fail ArgumentError, 'latitude cannot be nil'
      end

      if latitude > 180
        fail ArgumentError, 'invalid value for "latitude", must be smaller than or equal to 180.'
      end

      if latitude < -180
        fail ArgumentError, 'invalid value for "latitude", must be greater than or equal to -180.'
      end

      @latitude = latitude
    end

    # Custom attribute writer method with validation
    # @param [Object] longitude Value to be assigned
    def longitude=(longitude)
      if longitude.nil?
        fail ArgumentError, 'longitude cannot be nil'
      end

      if longitude > 180
        fail ArgumentError, 'invalid value for "longitude", must be smaller than or equal to 180.'
      end

      if longitude < -180
        fail ArgumentError, 'invalid value for "longitude", must be greater than or equal to -180.'
      end

      @longitude = longitude
    end

    # Custom attribute writer method with validation
    # @param [Object] street_number Value to be assigned
    def street_number=(street_number)
      if !street_number.nil? && street_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "street_number", the character length must be smaller than or equal to 255.'
      end

      if !street_number.nil? && street_number.to_s.length < 0
        fail ArgumentError, 'invalid value for "street_number", the character length must be great than or equal to 0.'
      end

      @street_number = street_number
    end

    # Custom attribute writer method with validation
    # @param [Object] street_name Value to be assigned
    def street_name=(street_name)
      if !street_name.nil? && street_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "street_name", the character length must be smaller than or equal to 255.'
      end

      if !street_name.nil? && street_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "street_name", the character length must be great than or equal to 0.'
      end

      @street_name = street_name
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_number Value to be assigned
    def unit_number=(unit_number)
      if !unit_number.nil? && unit_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "unit_number", the character length must be smaller than or equal to 255.'
      end

      if !unit_number.nil? && unit_number.to_s.length < 0
        fail ArgumentError, 'invalid value for "unit_number", the character length must be great than or equal to 0.'
      end

      @unit_number = unit_number
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 255
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 255.'
      end

      if !postal_code.nil? && postal_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "postal_code", the character length must be great than or equal to 0.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 255
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 255.'
      end

      if !city.nil? && city.to_s.length < 0
        fail ArgumentError, 'invalid value for "city", the character length must be great than or equal to 0.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] city_region Value to be assigned
    def city_region=(city_region)
      if !city_region.nil? && city_region.to_s.length > 255
        fail ArgumentError, 'invalid value for "city_region", the character length must be smaller than or equal to 255.'
      end

      if !city_region.nil? && city_region.to_s.length < 0
        fail ArgumentError, 'invalid value for "city_region", the character length must be great than or equal to 0.'
      end

      @city_region = city_region
    end

    # Custom attribute writer method with validation
    # @param [Object] county_or_parish Value to be assigned
    def county_or_parish=(county_or_parish)
      if !county_or_parish.nil? && county_or_parish.to_s.length > 255
        fail ArgumentError, 'invalid value for "county_or_parish", the character length must be smaller than or equal to 255.'
      end

      if !county_or_parish.nil? && county_or_parish.to_s.length < 0
        fail ArgumentError, 'invalid value for "county_or_parish", the character length must be great than or equal to 0.'
      end

      @county_or_parish = county_or_parish
    end

    # Custom attribute writer method with validation
    # @param [Object] state_or_province Value to be assigned
    def state_or_province=(state_or_province)
      if !state_or_province.nil? && state_or_province.to_s.length > 255
        fail ArgumentError, 'invalid value for "state_or_province", the character length must be smaller than or equal to 255.'
      end

      if !state_or_province.nil? && state_or_province.to_s.length < 0
        fail ArgumentError, 'invalid value for "state_or_province", the character length must be great than or equal to 0.'
      end

      @state_or_province = state_or_province
    end

    # Custom attribute writer method with validation
    # @param [Object] state_or_province_region Value to be assigned
    def state_or_province_region=(state_or_province_region)
      if !state_or_province_region.nil? && state_or_province_region.to_s.length > 255
        fail ArgumentError, 'invalid value for "state_or_province_region", the character length must be smaller than or equal to 255.'
      end

      if !state_or_province_region.nil? && state_or_province_region.to_s.length < 0
        fail ArgumentError, 'invalid value for "state_or_province_region", the character length must be great than or equal to 0.'
      end

      @state_or_province_region = state_or_province_region
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 255
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 255.'
      end

      if !country.nil? && country.to_s.length < 0
        fail ArgumentError, 'invalid value for "country", the character length must be great than or equal to 0.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] country_region Value to be assigned
    def country_region=(country_region)
      if !country_region.nil? && country_region.to_s.length > 255
        fail ArgumentError, 'invalid value for "country_region", the character length must be smaller than or equal to 255.'
      end

      if !country_region.nil? && country_region.to_s.length < 0
        fail ArgumentError, 'invalid value for "country_region", the character length must be great than or equal to 0.'
      end

      @country_region = country_region
    end

    # Custom attribute writer method with validation
    # @param [Object] unparsed_address Value to be assigned
    def unparsed_address=(unparsed_address)
      if !unparsed_address.nil? && unparsed_address.to_s.length > 255
        fail ArgumentError, 'invalid value for "unparsed_address", the character length must be smaller than or equal to 255.'
      end

      if !unparsed_address.nil? && unparsed_address.to_s.length < 0
        fail ArgumentError, 'invalid value for "unparsed_address", the character length must be great than or equal to 0.'
      end

      @unparsed_address = unparsed_address
    end

    # Custom attribute writer method with validation
    # @param [Object] unparsed_address_part_one Value to be assigned
    def unparsed_address_part_one=(unparsed_address_part_one)
      if !unparsed_address_part_one.nil? && unparsed_address_part_one.to_s.length > 255
        fail ArgumentError, 'invalid value for "unparsed_address_part_one", the character length must be smaller than or equal to 255.'
      end

      if !unparsed_address_part_one.nil? && unparsed_address_part_one.to_s.length < 0
        fail ArgumentError, 'invalid value for "unparsed_address_part_one", the character length must be great than or equal to 0.'
      end

      @unparsed_address_part_one = unparsed_address_part_one
    end

    # Custom attribute writer method with validation
    # @param [Object] unparsed_address_part_two Value to be assigned
    def unparsed_address_part_two=(unparsed_address_part_two)
      if !unparsed_address_part_two.nil? && unparsed_address_part_two.to_s.length > 255
        fail ArgumentError, 'invalid value for "unparsed_address_part_two", the character length must be smaller than or equal to 255.'
      end

      if !unparsed_address_part_two.nil? && unparsed_address_part_two.to_s.length < 0
        fail ArgumentError, 'invalid value for "unparsed_address_part_two", the character length must be great than or equal to 0.'
      end

      @unparsed_address_part_two = unparsed_address_part_two
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          street_number == o.street_number &&
          street_name == o.street_name &&
          unit_number == o.unit_number &&
          postal_code == o.postal_code &&
          city == o.city &&
          city_region == o.city_region &&
          county_or_parish == o.county_or_parish &&
          state_or_province == o.state_or_province &&
          state_or_province_region == o.state_or_province_region &&
          country == o.country &&
          country_region == o.country_region &&
          unparsed_address == o.unparsed_address &&
          unparsed_address_part_one == o.unparsed_address_part_one &&
          unparsed_address_part_two == o.unparsed_address_part_two
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, latitude, longitude, street_number, street_name, unit_number, postal_code, city, city_region, county_or_parish, state_or_province, state_or_province_region, country, country_region, unparsed_address, unparsed_address_part_one, unparsed_address_part_two].hash
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
