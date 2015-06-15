require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiBeneficiaryPartyDetails do
  let(:document) { Fabricate(:epi_beneficiary_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(EpiAccountID), 'AccountID'
  it_should_behave_like 'a simple properties', %w(EpiNameAddressDetails EpiBei)
end