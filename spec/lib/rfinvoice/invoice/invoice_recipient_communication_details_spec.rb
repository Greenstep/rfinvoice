require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceRecipientCommunicationDetails do
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientPhoneNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientEmailaddressIdentifier), 'String0_70', false
end
