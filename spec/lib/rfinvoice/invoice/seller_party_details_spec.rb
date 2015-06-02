require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPartyDetails do

  subject {
    described_class.new(seller_organization_name: ['Test Organization'])
  }

  described_class::STRINGS_0_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  end
  described_class::STRINGS_0_512.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_512).with_required(false) }
  end

  it { is_expected.to have_attribute(:seller_code).of_type(::RFinvoice::PartyIdentifier).with_required(false) }
  it { is_expected.to have_attribute(:seller_organization_name).of_type(Array[::RFinvoice::Type::String2_70]).with_required(true) }
  it { is_expected.to have_attribute(:seller_organization_department).of_type(Array[::RFinvoice::Type::String0_35]).with_required(false) }
end
