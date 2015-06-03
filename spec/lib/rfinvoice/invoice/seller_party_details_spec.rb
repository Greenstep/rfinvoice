require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPartyDetails do

  subject {
    described_class.new(seller_organisation_name: ['Test Organization'])
  }

  described_class::STRINGS_0_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  end
  described_class::STRINGS_0_512.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_512).with_required(false) }
  end

  it { is_expected.to have_attribute(:seller_code).of_type(::RFinvoice::PartyIdentifier).with_required(false) }
  it { is_expected.to have_attribute(:seller_organisation_name).of_type(::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70]).with_required(true) }
  it { is_expected.to have_attribute(:seller_organisation_department).of_type(::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35]).with_required(false) }
end
