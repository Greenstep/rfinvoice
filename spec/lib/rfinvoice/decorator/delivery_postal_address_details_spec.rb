require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DeliveryPostalAddressDetails do
  let(:document) { Fabricate(:delivery_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(DeliveryTownName DeliveryPostCodeIdentifier CountryCode CountryName DeliveryPostOfficeBoxIdentifier)
  it_should_behave_like 'a simple collections', %w(DeliveryStreetName)
end
