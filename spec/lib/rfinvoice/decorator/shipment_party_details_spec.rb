require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::ShipmentPartyDetails do
  let(:document) { Fabricate.build(:shipment_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(ShipmentCode ShipmentPostalAddressDetails)
  it_should_behave_like 'a simple properties', %w(ShipmentPartyIdentifier ShipmentOrganisationTaxCode ShipmentSiteCode)
  it_should_behave_like 'a simple collections', %w(ShipmentOrganisationDepartment ShipmentOrganisationName)
end
