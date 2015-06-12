require 'spec_helper'

RSpec.describe ::RFinvoice::CashDiscountVatDetails do
  subject { Fabricate.build(:cash_discount_vat_details) }
  it_should_behave_like 'a typed attributes', %w(CashDiscountVatPercent), 'PercentageType', true
  it_should_behave_like 'a modelized attribute', 'CashDiscountVatAmount', 'Amount', true
end
