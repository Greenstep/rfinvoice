require 'spec_helper'

RSpec.describe ::RFinvoice::BuyerPartyDetails do
  subject { Fabricate.build(:buyer_party_details) }
  it_should_behave_like 'a complex attributes', %w(BuyerCode BuyerPostalAddressDetails), false
  it_should_behave_like 'a typed array attributes', %w(BuyerOrganisationDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(BuyerOrganisationName), ::RFinvoice::Type::Array1_1000, 'String2_70', true
  it_should_behave_like 'a typed attributes', %w(BuyerPartyIdentifier BuyerOrganisationTaxCode), 'String0_35', false
end
