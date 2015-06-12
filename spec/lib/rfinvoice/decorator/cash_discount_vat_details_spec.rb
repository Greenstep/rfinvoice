require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::CashDiscountVatDetails do
  let(:document) { Fabricate.build(:cash_discount_vat_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(CashDiscountVatAmount), 'Amount'
  it_should_behave_like 'a simple properties', %w(CashDiscountVatPercent)
end
