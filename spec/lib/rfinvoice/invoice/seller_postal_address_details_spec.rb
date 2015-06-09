require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPostalAddressDetails do
  subject { Fabricate(:seller_postal_address_details) }
  it_should_behave_like 'a typed attributes', %w(SellerTownName SellerPostCodeIdentifier), 'String2_35', true
  it_should_behave_like 'a typed attributes', %w(SellerPostOfficeBoxIdentifier CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(SellerStreetName), ::RFinvoice::Type::Array1_3, 'String2_35', true
end