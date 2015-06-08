require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceRecipientPartyDetails do
  let(:document) { Fabricate.build(:invoice_recipient_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(InvoiceRecipientCode InvoiceRecipientPostalAddressDetails)
  it_should_behave_like 'a simple properties', %w(InvoiceRecipientPartyIdentifier InvoiceRecipientOrganisationTaxCode)
  it_should_behave_like 'a simple collections', %w(InvoiceRecipientDepartment InvoiceRecipientOrganisationName)
end
