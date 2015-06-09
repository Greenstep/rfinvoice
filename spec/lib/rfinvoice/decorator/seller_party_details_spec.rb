require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerPartyDetails do
  let(:document) { Fabricate.build(:seller_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(SellerCode SellerPostalAddressDetails)
  it_should_behave_like 'a simple properties', %w(SellerPartyIdentifier SellerOrganisationTaxCode)
  it_should_behave_like 'a simple properties', %w(SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText)
  it_should_behave_like 'a simple collections', %w(SellerOrganisationDepartment SellerOrganisationName)
end