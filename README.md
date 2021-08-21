# Aryeo SDK

## Introduction

This is an auto-generated client SDK for interfacing with the Aryeo API. We support a variety of languages and frameworks that are a great starting point for experimenting with the API. If there is an additional language or framework that you want to see supported, then please reach out and make a contribution!

<p align="center"> <a href="https://github.com/AryeoHQ/aryeo-api-dart-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/dart.svg" alt="Dart" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-go-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/go.svg" alt="Go" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-js-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/js.svg" alt="Node JS" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-php-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/php.svg" alt="PHP" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-ruby-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/ruby.svg" alt="Ruby" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-rust-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/rust.svg" alt="Rust" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-swift-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/swift.svg" alt="Swift" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> </p>

## Authentication

To start using the Aryeo API, you will need to generate an API key from your group's developer settings. Then, make sure to provide your API key as a bearer token. Requests made without an API key will result in a `401 Unauthorized` error.

Example: `Authorization: Bearer {API_KEY}`

## Installation

Add the following block to `Gemfile`:

```
gem 'aryeo', :git => 'https://github.com/AryeoHQ/aryeo-api-ruby-sdk.git'
```

## Getting Started

```ruby
require 'time'
require 'aryeo'

Aryeo.configure do |config|
  config.access_token = 'API_KEY'
end

api_instance = Aryeo::ListingsApi.new
uuid = 'UUID'

begin
  result = api_instance.get_listings_id(uuid)
  p result.data.address.address_line_1
rescue Aryeo::ApiError => e
  puts "Error when calling ListingsApi->get_listings_id: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.aryeo.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Aryeo::AppointmentsApi* | [**get_appointments**](docs/AppointmentsApi.md#get_appointments) | **GET** /appointments | List all appointments.
*Aryeo::AppointmentsApi* | [**get_unconfirmed_appointments**](docs/AppointmentsApi.md#get_unconfirmed_appointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments.
*Aryeo::AppointmentsApi* | [**put_appointments_appointment_id_cancel**](docs/AppointmentsApi.md#put_appointments_appointment_id_cancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment.
*Aryeo::AppointmentsApi* | [**put_appointments_appointment_id_reschedule**](docs/AppointmentsApi.md#put_appointments_appointment_id_reschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment.
*Aryeo::ListingsApi* | [**get_listings**](docs/ListingsApi.md#get_listings) | **GET** /listings | List all listings.
*Aryeo::ListingsApi* | [**get_listings_id**](docs/ListingsApi.md#get_listings_id) | **GET** /listings/{listing_id} | Retrieve a listing.
*Aryeo::OrdersApi* | [**get_orders**](docs/OrdersApi.md#get_orders) | **GET** /orders | List all orders.
*Aryeo::OrdersApi* | [**post_orders**](docs/OrdersApi.md#post_orders) | **POST** /orders | Create an order.
*Aryeo::VendorsApi* | [**get_vendors**](docs/VendorsApi.md#get_vendors) | **GET** /vendors | List all vendors.
*Aryeo::VendorsApi* | [**get_vendors_id**](docs/VendorsApi.md#get_vendors_id) | **GET** /vendors/{vendor_id} | Retrieve a vendor.


## Documentation for Models

 - [Aryeo::Address](docs/Address.md)
 - [Aryeo::ApiError](docs/ApiError.md)
 - [Aryeo::ApiFail](docs/ApiFail.md)
 - [Aryeo::Appointment](docs/Appointment.md)
 - [Aryeo::AppointmentCancelPutPayload](docs/AppointmentCancelPutPayload.md)
 - [Aryeo::AppointmentCollection](docs/AppointmentCollection.md)
 - [Aryeo::AppointmentReschedulePutPayload](docs/AppointmentReschedulePutPayload.md)
 - [Aryeo::AppointmentResource](docs/AppointmentResource.md)
 - [Aryeo::FloorPlan](docs/FloorPlan.md)
 - [Aryeo::Group](docs/Group.md)
 - [Aryeo::GroupCollection](docs/GroupCollection.md)
 - [Aryeo::GroupResource](docs/GroupResource.md)
 - [Aryeo::Image](docs/Image.md)
 - [Aryeo::InteractiveContent](docs/InteractiveContent.md)
 - [Aryeo::Listing](docs/Listing.md)
 - [Aryeo::ListingBuilding](docs/ListingBuilding.md)
 - [Aryeo::ListingCollection](docs/ListingCollection.md)
 - [Aryeo::ListingLot](docs/ListingLot.md)
 - [Aryeo::ListingPrice](docs/ListingPrice.md)
 - [Aryeo::ListingResource](docs/ListingResource.md)
 - [Aryeo::Order](docs/Order.md)
 - [Aryeo::OrderCollection](docs/OrderCollection.md)
 - [Aryeo::OrderForm](docs/OrderForm.md)
 - [Aryeo::OrderItem](docs/OrderItem.md)
 - [Aryeo::OrderPostPayload](docs/OrderPostPayload.md)
 - [Aryeo::OrderResource](docs/OrderResource.md)
 - [Aryeo::PaginationLinks](docs/PaginationLinks.md)
 - [Aryeo::PaginationMeta](docs/PaginationMeta.md)
 - [Aryeo::PropertyWebsite](docs/PropertyWebsite.md)
 - [Aryeo::SocialProfiles](docs/SocialProfiles.md)
 - [Aryeo::UnconfirmedAppointment](docs/UnconfirmedAppointment.md)
 - [Aryeo::UnconfirmedAppointmentCollection](docs/UnconfirmedAppointmentCollection.md)
 - [Aryeo::User](docs/User.md)
 - [Aryeo::Video](docs/Video.md)


## Documentation for Authorization


### Token

- **Type**: Bearer authentication


## Author

jarrod@aryeo.com
