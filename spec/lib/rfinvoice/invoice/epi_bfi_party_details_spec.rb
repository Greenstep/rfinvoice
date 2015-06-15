require 'spec_helper'

RSpec.describe ::RFinvoice::EpiBfiPartyDetails do
  subject { Fabricate.build(:epi_bfi_party_details) }
  it_should_behave_like 'a modelized attributes', %w(EpiBfiIdentifier), 'AccountBic', false
  it_should_behave_like 'a typed attributes', %w(EpiBfiName), 'String1_35', false
end
