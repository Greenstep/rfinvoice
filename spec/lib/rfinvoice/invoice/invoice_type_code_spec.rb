require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceTypeCode do
  subject { Fabricate.build(:invoice_type_code) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::InvoiceTypeCodePattern).with_required(true) }
  it { is_expected.to have_virtus_attribute(:code_list_agency_identifier).of_type(::RFinvoice::Type::NMToken3).with_required(false).with_default('SPY') }
end
