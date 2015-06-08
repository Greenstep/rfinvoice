require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::ShipmentPostalAddressDetails do
  let(:document) { Fabricate(:shipment_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(ShipmentTownName ShipmentPostCodeIdentifier CountryCode CountryName ShipmentPostOfficeBoxIdentifier)
  it_should_behave_like 'a simple collections', %w(ShipmentStreetName)
end
