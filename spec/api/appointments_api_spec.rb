=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Aryeo::AppointmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AppointmentsApi' do
  before do
    # run before each test
    @api_instance = Aryeo::AppointmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppointmentsApi' do
    it 'should create an instance of AppointmentsApi' do
      expect(@api_instance).to be_instance_of(Aryeo::AppointmentsApi)
    end
  end

  # unit tests for get_appointments
  # List all appointments.
  # List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma separated list of optional data to include in the response.
  # @option opts [String] :filter_tense Return appointments that are upcoming or in the past.
  # @option opts [Time] :filter_start_at_gte Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
  # @option opts [Time] :filter_start_at_lte Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
  # @option opts [Array<String>] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
  # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
  # @option opts [String] :per_page The number of items per page. Defaults to 25.
  # @option opts [String] :page The requested page. Defaults to 1.
  # @return [AppointmentCollection]
  describe 'get_appointments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unconfirmed_appointments
  # List all unconfirmed appointments.
  # List all unconfirmed appointments. These are appointments that have not been scheduled. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma separated list of optional data to include in the response.
  # @option opts [Array<String>] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
  # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
  # @option opts [String] :per_page The number of items per page. Defaults to 25.
  # @option opts [String] :page The requested page. Defaults to 1.
  # @return [UnconfirmedAppointmentCollection]
  describe 'get_unconfirmed_appointments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unconfirmed_appointments_id
  # Retrieve an unconfirmed appointment.
  # Retrieves the details of an unconfirmed appointment with the given ID.
  # @param unconfirmed_appointment_id The ID of an appointment.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma separated list of optional data to include in the response.
  # @return [UnconfirmedAppointmentResource]
  describe 'get_unconfirmed_appointments_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_appointments_appointment_id_cancel
  # Cancel an appointment.
  # Cancel an appointment. The appointments order&#39;s customer can be optionally notified of this change. 
  # @param appointment_id The ID of an appointment.
  # @param [Hash] opts the optional parameters
  # @option opts [AppointmentCancelPutPayload] :appointment_cancel_put_payload 
  # @return [AppointmentResource]
  describe 'put_appointments_appointment_id_cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_appointments_appointment_id_reschedule
  # Reschedule an appointment.
  # Reschedule an appointment. The appointments order&#39;s customer can be optionally notified of this change. 
  # @param appointment_id The ID of an appointment.
  # @param [Hash] opts the optional parameters
  # @option opts [AppointmentReschedulePutPayload] :appointment_reschedule_put_payload 
  # @return [AppointmentResource]
  describe 'put_appointments_appointment_id_reschedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
