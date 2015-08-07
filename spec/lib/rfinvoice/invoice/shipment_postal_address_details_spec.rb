require 'spec_helper'

RSpec.describe ::RFinvoice::ShipmentPostalAddressDetails do
  subject { Fabricate(:shipment_postal_address_details) }

  it_should_behave_like 'a typed attributes', %w(ShipmentTownName ShipmentPostCodeIdentifier), 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(ShipmentPostOfficeBoxIdentifier CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(ShipmentStreetName), ::RFinvoice::Type::Array1_3, 'String2_35', false
end
