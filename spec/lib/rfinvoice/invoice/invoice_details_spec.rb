require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceDetails do
  subject { Fabricate.build(:invoice_details) }
  it_should_behave_like 'a complex attributes', %w(InvoiceTypeCode),  true
  it_should_behave_like 'a typed attributes', %w(InvoiceTypeText), 'String1_35', true
end
