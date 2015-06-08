require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryPartyDetails do
  subject { Fabricate.build(:delivery_party_details) }
  it_should_behave_like 'a complex attributes', %w(DeliveryCode DeliveryPostalAddressDetails), false
  it_should_behave_like 'a typed array attributes', %w(DeliveryOrganisationDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(DeliveryOrganisationName), ::RFinvoice::Type::Array1_1000, 'String2_35', true
  it_should_behave_like 'a typed attributes', %w(DeliveryPartyIdentifier DeliveryOrganisationTaxCode), 'String0_35', false
end
