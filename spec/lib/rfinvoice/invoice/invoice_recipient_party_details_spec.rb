require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceRecipientPartyDetails do
  subject { Fabricate.build(:invoice_recipient_party_details) }
  it_should_behave_like 'a complex attributes', %w(InvoiceRecipientCode InvoiceRecipientPostalAddressDetails), false
  it_should_behave_like 'a typed array attributes', %w(InvoiceRecipientDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(InvoiceRecipientOrganisationName), ::Array, 'String2_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientPartyIdentifier InvoiceRecipientOrganisationTaxCode), 'String0_35', false
end
