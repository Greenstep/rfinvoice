require 'spec_helper'

RSpec.describe ::RFinvoice::ShipmentPartyDetails do
  subject { Fabricate.build(:shipment_party_details) }
  it_should_behave_like 'a complex attributes', %w(ShipmentCode ShipmentPostalAddressDetails), false
  it_should_behave_like 'a typed array attributes', %w(ShipmentOrganisationDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(ShipmentOrganisationName), ::RFinvoice::Type::Array1_1000, 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(ShipmentPartyIdentifier ShipmentOrganisationTaxCode ShipmentSiteCode), 'String0_35', false
end
