require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiBfiPartyDetails do
  let(:document) { Fabricate(:epi_bfi_party_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(EpiBfiIdentifier), 'AccountBic'
  it_should_behave_like 'a simple properties', %w(EpiBfiName)
end