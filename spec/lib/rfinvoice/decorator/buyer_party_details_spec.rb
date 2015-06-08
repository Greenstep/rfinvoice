require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::BuyerPartyDetails do
  let(:document) { Fabricate.build(:buyer_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(BuyerCode BuyerPostalAddressDetails)
  it_should_behave_like 'a simple properties', %w(BuyerPartyIdentifier BuyerOrganisationTaxCode)
  it_should_behave_like 'a simple collections', %w(BuyerOrganisationDepartment BuyerOrganisationName)
end
