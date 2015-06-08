require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DeliveryPartyDetails do
  let(:document) { Fabricate.build(:delivery_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(DeliveryCode DeliveryPostalAddressDetails)
  it_should_behave_like 'a simple properties', %w(DeliveryPartyIdentifier DeliveryOrganisationTaxCode)
  it_should_behave_like 'a simple collections', %w(DeliveryOrganisationDepartment DeliveryOrganisationName)
end
