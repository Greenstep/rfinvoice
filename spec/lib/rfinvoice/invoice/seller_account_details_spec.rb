require 'spec_helper'

RSpec.describe ::RFinvoice::SellerAccountDetails do
  subject { Fabricate.build(:seller_account_details) }
  it_should_behave_like 'a modelized attributes', %w(SellerAccountID), 'AccountID', false
  it_should_behave_like 'a modelized attributes', %w(SellerBic), 'AccountBic', false
end
