require 'spec_helper'

RSpec.describe ::RFinvoice::SellerAccountID do
  subject { Fabricate.build(:seller_account_id) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::NMToken2_35).with_required(true) }
  it { is_expected.to have_virtus_attribute(:identification_scheme_name).of_type(::RFinvoice::Type::AccountNumberSchemeType).with_required(true) }
end
