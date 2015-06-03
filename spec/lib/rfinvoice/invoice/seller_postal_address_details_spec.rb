require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPostalAddressDetails do
  subject {
    described_class.new(
      seller_town_name: 'Cupertino',
      seller_post_code_identifier: '95014',
      seller_street_name: ['Infinite Loop 1']
    )
  }

  described_class::STRINGS_2_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String2_35).with_required(true) }
  end

  described_class::STRINGS_0_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  end
end