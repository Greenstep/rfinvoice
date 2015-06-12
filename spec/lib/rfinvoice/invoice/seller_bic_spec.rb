require 'spec_helper'

RSpec.describe ::RFinvoice::SellerBic do
  subject { Fabricate.build(:seller_bic) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::NMToken8_11).with_required(true) }
  it { is_expected.to have_virtus_attribute(:identification_scheme_name).of_type(::RFinvoice::Type::BicSchemeType).with_required(true) }
end
