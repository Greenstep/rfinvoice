require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceRecipientCommunicationDetails do
  let(:document) { Fabricate(:invoice_recipient_communication_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(InvoiceRecipientPhoneNumberIdentifier InvoiceRecipientEmailaddressIdentifier)
end
