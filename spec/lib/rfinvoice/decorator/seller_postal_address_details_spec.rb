require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerPostalAddressDetails do
  let(:document) { Fabricate(:seller_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(SellerTownName SellerPostCodeIdentifier CountryCode CountryName SellerPostOfficeBoxIdentifier)
  it_should_behave_like 'a simple collections', %w(SellerStreetName)
end
