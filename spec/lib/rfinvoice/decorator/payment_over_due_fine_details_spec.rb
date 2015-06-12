require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::PaymentOverDueFineDetails do
  let(:document) { Fabricate.build(:payment_over_due_fine_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(PaymentOverDueFixedAmount), 'Amount'
  it_should_behave_like 'a simple properties', %w(PaymentOverDueFinePercent)
  it_should_behave_like 'a simple collections', %w(PaymentOverDueFineFreeText)
end
