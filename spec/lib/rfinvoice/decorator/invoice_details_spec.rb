require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceDetails do
  let(:document) { Fabricate.build(:invoice_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(InvoiceTypeCode)
  it_should_behave_like 'a simple properties', %w(InvoiceTypeText)
  it_should_behave_like 'a simple collections', %w()
end
