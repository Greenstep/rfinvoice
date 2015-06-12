require 'spec_helper'

RSpec.describe ::RFinvoice::PaymentTermsDetails do
  subject { Fabricate.build(:payment_terms_details) }
  it_should_behave_like 'a typed array attributes', %w(PaymentTermsFreeText), ::RFinvoice::Type::Array0_2, 'String0_70', false
  it_should_behave_like 'a typed attributes', %w(CashDiscountPercent), 'Percentage', false
  it_should_behave_like 'a modelized attributes', %w(CashDiscountBaseAmount CashDiscountAmount CashDiscountExcludingVatAmount ReducedInvoiceVatIncludedAmount), 'Amount', false
  it_should_behave_like 'a complex attributes', %w(PaymentOverDueFineDetails), false
  it_should_behave_like 'a complex attributes collection', %w(CashDiscountVatDetails), ::Array, false
end
