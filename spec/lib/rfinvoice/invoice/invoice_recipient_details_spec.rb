require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceRecipientDetails do
  subject { Fabricate.build(:invoice_recipient_details) }

  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientAddress), 'String1_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientIntermediatorAddress), 'NMToken8_11', false
end
