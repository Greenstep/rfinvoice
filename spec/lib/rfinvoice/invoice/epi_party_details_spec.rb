require 'spec_helper'

RSpec.describe ::RFinvoice::EpiPartyDetails do
  subject { Fabricate.build(:epi_party_details) }
  it_should_behave_like 'a complex attributes', %w(EpiBfiPartyDetails EpiBeneficiaryPartyDetails), true
end
