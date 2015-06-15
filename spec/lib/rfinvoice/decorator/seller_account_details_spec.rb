require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerAccountDetails do
  let(:document) { Fabricate(:seller_account_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(SellerAccountID), 'AccountID'
  it_should_behave_like 'a modelized properties', %w(SellerBic), 'AccountBic'
end