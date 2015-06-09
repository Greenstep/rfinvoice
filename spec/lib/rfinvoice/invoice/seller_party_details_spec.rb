require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPartyDetails do
  subject { Fabricate.build(:seller_party_details) }
  it_should_behave_like 'a complex attributes', %w(SellerCode SellerPostalAddressDetails), false
  it_should_behave_like 'a typed array attributes', %w(SellerOrganisationDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(SellerOrganisationName), ::RFinvoice::Type::Array1_1000, 'String2_70', true
  it_should_behave_like 'a typed attributes', %w(SellerPartyIdentifier SellerOrganisationTaxCode), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText), 'String0_512', false
end
