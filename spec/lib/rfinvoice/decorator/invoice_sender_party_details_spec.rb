require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceSenderPartyDetails do
  let(:document) { Fabricate.build(:invoice_sender_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(InvoiceSenderPartyIdentifier InvoiceSenderOrganisationTaxCode)
  it_should_behave_like 'a simple collections', %w(InvoiceSenderOrganisationName)
  it_should_behave_like 'a decorated properties', %w(InvoiceSenderCode)
end
