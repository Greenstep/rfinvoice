require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceSenderCode do
  let(:document) { Fabricate(:invoice_sender_code) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:identifier_type).as('IdentifierType').with_attribute }
end