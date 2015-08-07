require 'spec_helper'

RSpec.describe ::RFinvoice::EpiCharge do
  subject { Fabricate.build(:epi_charge) }
  it { is_expected.to have_virtus_attribute(:charge_option).of_type(::RFinvoice::Type::ChargeOptionType).with_required(false) }
end
