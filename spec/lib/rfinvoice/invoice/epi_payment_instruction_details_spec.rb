require 'spec_helper'

RSpec.describe ::RFinvoice::EpiPaymentInstructionDetails do
  subject { Fabricate.build(:epi_payment_instruction_details) }
  it_should_behave_like 'a typed attributes', %w(EpiPaymentInstructionId), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(EpiTransactionTypeCode), 'Token3', false
  it_should_behave_like 'a typed attributes', %w(EpiInstructionCode), 'NMToken0_35', false
  it_should_behave_like 'a modelized attributes', %w(EpiDateOptionDate), 'Date', true
  it_should_behave_like 'a modelized attributes', %w(EpiInstructedAmount), 'EpiAmount', true
  it_should_behave_like 'a complex attributes', %w(EpiRemittanceInfoIdentifier), false
  it_should_behave_like 'a complex attributes', %w(EpiCharge), true
end
