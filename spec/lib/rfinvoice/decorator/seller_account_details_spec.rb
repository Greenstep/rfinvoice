require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerAccountDetails do
  let(:document) { Fabricate(:seller_account_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(SellerAccountID SellerBic)
end