require 'spec_helper'

RSpec.describe ::RFinvoice::BuyerCode do
  subject { Fabricate.build(:delivery_code) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::String0_35).with_required(true) }
  it { is_expected.to have_virtus_attribute(:identifier_type).of_type(::RFinvoice::Type::Identifier).with_required(true) }
end
