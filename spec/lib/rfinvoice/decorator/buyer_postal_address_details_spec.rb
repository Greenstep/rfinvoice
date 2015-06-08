require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::BuyerPostalAddressDetails do
  let(:document) { Fabricate(:buyer_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(BuyerTownName BuyerPostCodeIdentifier CountryCode CountryName BuyerPostOfficeBoxIdentifier)
  it_should_behave_like 'a simple collections', %w(BuyerStreetName)
end
