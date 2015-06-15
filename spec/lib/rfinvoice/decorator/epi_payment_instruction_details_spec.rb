require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiPaymentInstructionDetails do
  let(:document) { Fabricate.build(:epi_payment_instruction_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(EpiInstructedAmount), 'EpiAmount'
  it_should_behave_like 'a modelized properties', %w(EpiDateOptionDate), 'Date'
  # it_should_behave_like 'a simple properties', %w(EpiReference EpiUrl EpiEmail)
  it_should_behave_like 'a simple properties', %w(EpiPaymentInstructionId EpiTransactionTypeCode EpiInstructionCode)
end
