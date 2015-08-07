require 'spec_helper'

RSpec.describe ::RFinvoice::SellerOfficialPostalAddressDetails do
  subject { Fabricate.build(:seller_official_postal_address_details) }
  it_should_behave_like 'a typed attributes', %w(SellerOfficialStreetName SellerOfficialTownName SellerOfficialPostCodeIdentifier), 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
end
