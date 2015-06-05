require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerOfficialPostalAddressDetails do
  let(:document) { Fabricate.build(:seller_official_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(SellerOfficialStreetName SellerOfficialTownName SellerOfficialPostCodeIdentifier CountryCode CountryName)
end