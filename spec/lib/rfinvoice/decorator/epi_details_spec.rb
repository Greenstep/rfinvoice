require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiDetails do
  let(:document) { Fabricate.build(:epi_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(EpiIdentificationDetails EpiPartyDetails EpiPaymentInstructionDetails)
end
