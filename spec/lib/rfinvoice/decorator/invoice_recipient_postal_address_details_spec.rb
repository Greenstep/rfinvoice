require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceRecipientPostalAddressDetails do
  let(:document) { Fabricate(:invoice_recipient_postal_address_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(InvoiceRecipientTownName InvoiceRecipientPostCodeIdentifier CountryCode CountryName InvoiceRecipientPostOfficeBoxIdentifier)
  it_should_behave_like 'a simple collections', %w(InvoiceRecipientStreetName)
end
