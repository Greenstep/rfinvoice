require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceRecipientPostalAddressDetails do
  subject { Fabricate(:invoice_recipient_postal_address_details) }

  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientTownName InvoiceRecipientPostCodeIdentifier), 'String2_35', true
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientPostOfficeBoxIdentifier CountryName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(InvoiceRecipientStreetName), ::RFinvoice::Type::Array1_3, 'String2_35', true
end