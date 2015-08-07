require 'spec_helper'

RSpec.describe ::RFinvoice::EpiDetails do
  subject { Fabricate.build(:epi_details) }
  it_should_behave_like 'a complex attributes', %w(EpiIdentificationDetails EpiPartyDetails EpiPaymentInstructionDetails),  false
end
