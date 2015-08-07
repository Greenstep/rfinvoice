require 'spec_helper'

RSpec.describe ::RFinvoice::EpiBeneficiaryPartyDetails do
  subject { Fabricate.build(:epi_beneficiary_party_details) }
  it_should_behave_like 'a modelized attributes', %w(EpiAccountID), 'AccountID', false
  it_should_behave_like 'a typed attributes', %w(EpiBei), 'NMToken8_11', false
  it_should_behave_like 'a typed attributes', %w(EpiNameAddressDetails), 'Token2_35', false
end
