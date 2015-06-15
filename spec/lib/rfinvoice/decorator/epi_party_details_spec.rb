require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiPartyDetails do
  let(:document) { Fabricate(:epi_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(EpiBfiPartyDetails EpiBeneficiaryPartyDetails)
end