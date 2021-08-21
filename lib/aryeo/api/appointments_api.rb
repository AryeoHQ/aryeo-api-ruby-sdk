=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

require 'cgi'

module Aryeo
  class AppointmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all appointments.
    # List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [String] :filter_tense Return appointments that are upcoming or in the past.
    # @option opts [Time] :filter_start_at_gte Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
    # @option opts [Time] :filter_start_at_lte Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
    # @option opts [Array] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [AppointmentCollection]
    def get_appointments(opts = {})
      data, _status_code, _headers = get_appointments_with_http_info(opts)
      data
    end

    # List all appointments.
    # List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [String] :filter_tense Return appointments that are upcoming or in the past.
    # @option opts [Time] :filter_start_at_gte Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date.
    # @option opts [Time] :filter_start_at_lte Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date.
    # @option opts [Array] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [Array<(AppointmentCollection, Integer, Hash)>] AppointmentCollection data, response status code and response headers
    def get_appointments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppointmentsApi.get_appointments ...'
      end
      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 0.'
      end

      allowable_values = ["PAST", "UPCOMING"]
      if @api_client.config.client_side_validation && opts[:'filter_tense'] && !allowable_values.include?(opts[:'filter_tense'])
        fail ArgumentError, "invalid value for \"filter_tense\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'filter_tense'].nil? && opts[:'filter_tense'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"filter_tense"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_tense'].nil? && opts[:'filter_tense'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_tense"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_start_at_gte'].nil? && opts[:'filter_start_at_gte'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"filter_start_at_gte"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_start_at_gte'].nil? && opts[:'filter_start_at_gte'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_start_at_gte"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_start_at_lte'].nil? && opts[:'filter_start_at_lte'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"filter_start_at_lte"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_start_at_lte'].nil? && opts[:'filter_start_at_lte'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"filter_start_at_lte"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_user_ids'].nil? && opts[:'filter_user_ids'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"filter_user_ids"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_user_ids'].nil? && opts[:'filter_user_ids'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"filter_user_ids"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AppointmentsApi.get_appointments, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AppointmentsApi.get_appointments, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/appointments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[tense]'] = opts[:'filter_tense'] if !opts[:'filter_tense'].nil?
      query_params[:'filter[start_at_gte]'] = opts[:'filter_start_at_gte'] if !opts[:'filter_start_at_gte'].nil?
      query_params[:'filter[start_at_lte]'] = opts[:'filter_start_at_lte'] if !opts[:'filter_start_at_lte'].nil?
      query_params[:'filter[user_ids]'] = opts[:'filter_user_ids'] if !opts[:'filter_user_ids'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AppointmentCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"AppointmentsApi.get_appointments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppointmentsApi#get_appointments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all unconfirmed appointments.
    # List all unconfirmed appointments. These are appointments that have not been scheduled. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [Array] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [UnconfirmedAppointmentCollection]
    def get_unconfirmed_appointments(opts = {})
      data, _status_code, _headers = get_unconfirmed_appointments_with_http_info(opts)
      data
    end

    # List all unconfirmed appointments.
    # List all unconfirmed appointments. These are appointments that have not been scheduled. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma separated list of optional data to include in the response.
    # @option opts [Array] :filter_user_ids The IDs of users whose appointments will be retrieved. UUID Version 4.
    # @option opts [String] :sort Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;.
    # @option opts [String] :per_page The number of items per page. Defaults to 25.
    # @option opts [String] :page The requested page. Defaults to 1.
    # @return [Array<(UnconfirmedAppointmentCollection, Integer, Hash)>] UnconfirmedAppointmentCollection data, response status code and response headers
    def get_unconfirmed_appointments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppointmentsApi.get_unconfirmed_appointments ...'
      end
      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'include'].nil? && opts[:'include'].to_s.length < 0
        fail ArgumentError, 'invalid value for "opts[:"include"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be great than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_user_ids'].nil? && opts[:'filter_user_ids'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"filter_user_ids"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'filter_user_ids'].nil? && opts[:'filter_user_ids'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"filter_user_ids"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 5
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AppointmentsApi.get_unconfirmed_appointments, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/unconfirmed-appointments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter[user_ids]'] = opts[:'filter_user_ids'] if !opts[:'filter_user_ids'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UnconfirmedAppointmentCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"AppointmentsApi.get_unconfirmed_appointments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppointmentsApi#get_unconfirmed_appointments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel an appointment.
    # Cancel an appointment. The appointments order's customer can be optionally notified of this change. 
    # @param appointment_id [String] The ID of an appointment.
    # @param [Hash] opts the optional parameters
    # @option opts [AppointmentCancelPutPayload] :appointment_cancel_put_payload 
    # @return [AppointmentResource]
    def put_appointments_appointment_id_cancel(appointment_id, opts = {})
      data, _status_code, _headers = put_appointments_appointment_id_cancel_with_http_info(appointment_id, opts)
      data
    end

    # Cancel an appointment.
    # Cancel an appointment. The appointments order&#39;s customer can be optionally notified of this change. 
    # @param appointment_id [String] The ID of an appointment.
    # @param [Hash] opts the optional parameters
    # @option opts [AppointmentCancelPutPayload] :appointment_cancel_put_payload 
    # @return [Array<(AppointmentResource, Integer, Hash)>] AppointmentResource data, response status code and response headers
    def put_appointments_appointment_id_cancel_with_http_info(appointment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppointmentsApi.put_appointments_appointment_id_cancel ...'
      end
      # verify the required parameter 'appointment_id' is set
      if @api_client.config.client_side_validation && appointment_id.nil?
        fail ArgumentError, "Missing the required parameter 'appointment_id' when calling AppointmentsApi.put_appointments_appointment_id_cancel"
      end
      if @api_client.config.client_side_validation && appointment_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "appointment_id" when calling AppointmentsApi.put_appointments_appointment_id_cancel, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && appointment_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "appointment_id" when calling AppointmentsApi.put_appointments_appointment_id_cancel, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/appointments/{appointment_id}/cancel'.sub('{' + 'appointment_id' + '}', CGI.escape(appointment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'appointment_cancel_put_payload'])

      # return_type
      return_type = opts[:debug_return_type] || 'AppointmentResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"AppointmentsApi.put_appointments_appointment_id_cancel",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppointmentsApi#put_appointments_appointment_id_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reschedule an appointment.
    # Reschedule an appointment. The appointments order's customer can be optionally notified of this change. 
    # @param appointment_id [String] The ID of an appointment.
    # @param [Hash] opts the optional parameters
    # @option opts [AppointmentReschedulePutPayload] :appointment_reschedule_put_payload 
    # @return [AppointmentResource]
    def put_appointments_appointment_id_reschedule(appointment_id, opts = {})
      data, _status_code, _headers = put_appointments_appointment_id_reschedule_with_http_info(appointment_id, opts)
      data
    end

    # Reschedule an appointment.
    # Reschedule an appointment. The appointments order&#39;s customer can be optionally notified of this change. 
    # @param appointment_id [String] The ID of an appointment.
    # @param [Hash] opts the optional parameters
    # @option opts [AppointmentReschedulePutPayload] :appointment_reschedule_put_payload 
    # @return [Array<(AppointmentResource, Integer, Hash)>] AppointmentResource data, response status code and response headers
    def put_appointments_appointment_id_reschedule_with_http_info(appointment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppointmentsApi.put_appointments_appointment_id_reschedule ...'
      end
      # verify the required parameter 'appointment_id' is set
      if @api_client.config.client_side_validation && appointment_id.nil?
        fail ArgumentError, "Missing the required parameter 'appointment_id' when calling AppointmentsApi.put_appointments_appointment_id_reschedule"
      end
      if @api_client.config.client_side_validation && appointment_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "appointment_id" when calling AppointmentsApi.put_appointments_appointment_id_reschedule, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && appointment_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "appointment_id" when calling AppointmentsApi.put_appointments_appointment_id_reschedule, the character length must be great than or equal to 0.'
      end

      # resource path
      local_var_path = '/appointments/{appointment_id}/reschedule'.sub('{' + 'appointment_id' + '}', CGI.escape(appointment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'appointment_reschedule_put_payload'])

      # return_type
      return_type = opts[:debug_return_type] || 'AppointmentResource'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Token']

      new_options = opts.merge(
        :operation => :"AppointmentsApi.put_appointments_appointment_id_reschedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppointmentsApi#put_appointments_appointment_id_reschedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
