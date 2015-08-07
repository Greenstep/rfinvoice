require 'spec_helper'

RSpec.describe ::RFinvoice::BuyerPostalAddressDetails do
  subject { Fabricate(:buyer_postal_address_details) }

  it_should_behave_like 'a typed attributes', %w(BuyerTownName BuyerPostCodeIdentifier), 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerPostOfficeBoxIdentifier CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(BuyerStreetName), ::RFinvoice::Type::Array1_3, 'String2_35', false
end
