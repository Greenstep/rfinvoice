require 'spec_helper'

RSpec.describe ::RFinvoice::SellerAccountDetails do
  subject { Fabricate.build(:seller_account_details) }
  it_should_behave_like 'a complex attributes', %w(SellerAccountID SellerBic), true
end
