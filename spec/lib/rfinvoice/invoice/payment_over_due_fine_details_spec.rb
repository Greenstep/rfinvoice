require 'spec_helper'

RSpec.describe ::RFinvoice::PaymentOverDueFineDetails do
  subject { Fabricate.build(:payment_over_due_fine_details) }
  it_should_behave_like 'a typed array attributes', %w(PaymentOverDueFineFreeText), ::RFinvoice::Type::Array0_3, 'String0_70', false
  it_should_behave_like 'a typed attributes', %w(PaymentOverDueFinePercent), 'Percentage', false
  it_should_behave_like 'a modelized attribute', 'PaymentOverDueFixedAmount', 'Amount', false
end
