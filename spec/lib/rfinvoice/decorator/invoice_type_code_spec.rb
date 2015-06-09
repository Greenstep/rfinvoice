require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceTypeCode do
  let(:document) { Fabricate(:invoice_type_code) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:code_list_agency_identifier).as('CodeListAgencyIdentifier').with_attribute }
end