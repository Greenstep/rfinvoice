require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceRecipientDetails do
  let(:document) { Fabricate.build(:invoice_recipient_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(InvoiceRecipientAddress InvoiceRecipientIntermediatorAddress)
end