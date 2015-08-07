require 'spec_helper'

RSpec.describe ::RFinvoice::EpiRemittanceInfoIdentifier do
  subject { Fabricate.build(:epi_remittance_info_identifier) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::EpiRemittanceInfoIdentifierPatternType).with_required(false) }
  it { is_expected.to have_virtus_attribute(:scheme).of_type(::RFinvoice::Type::EpiRemittanceInfoIdentifierSchemeType).with_required(false) }
end
