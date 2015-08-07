require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryPostalAddressDetails do
  subject { Fabricate(:delivery_postal_address_details) }

  it_should_behave_like 'a typed attributes', %w(DeliveryTownName DeliveryPostCodeIdentifier), 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(DeliveryPostofficeBoxIdentifier CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(DeliveryStreetName), ::RFinvoice::Type::Array1_3, 'String2_35', false
end
