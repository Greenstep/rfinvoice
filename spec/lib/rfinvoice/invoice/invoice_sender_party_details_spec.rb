require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceSenderPartyDetails do
  subject { Fabricate.build(:invoice_sender_party_details) }

  it_should_behave_like 'a typed attributes', %w(InvoiceSenderPartyIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceSenderOrganisationTaxCode), 'NMToken0_35', false
  it_should_behave_like 'a typed array attributes', %w(InvoiceSenderOrganisationName), ::RFinvoice::Type::Array1_1000, 'String2_35', true
  it_should_behave_like 'a complex attributes', %w(InvoiceSenderCode), false
end
