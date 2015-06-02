require 'spec_helper'

RSpec.describe ::RFinvoice::Invoice do

  let(:default_party_details) {
    ::RFinvoice::SellerPartyDetails.new(seller_organization_name: ['Test Organization'])
  }

  before :each do
    default_party_details
    allow(::RFinvoice::SellerPartyDetails).to receive(:new).and_return(default_party_details)
  end

  described_class::STRINGS_0_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35) }
  end
  described_class::STRINGS_0_512.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_512) }
  end

  it { is_expected.to have_attribute(:version).of_type(::String).with_default('2.01') }

  it { is_expected.to have_attribute(:seller_party_details).
                        of_type(::RFinvoice::SellerPartyDetails).with_default(default_party_details) }
end
