require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPostalAddressDetails do
  subject {
    described_class.new(
      seller_town_name: 'Cupertino',
      seller_post_code_identifier: '95014',
      seller_street_name: ['Infinite Loop 1']
    )
  }
  %w(SellerTownName SellerPostCodeIdentifier).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String2_35).with_required(true) }
  end
  %w(CountryName SellerPostOfficeBoxIdentifier SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  end
  it { is_expected.to have_virtus_attribute(:seller_street_name).of_type(::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35]).with_required(true) }
  it { is_expected.to have_virtus_attribute(:country_code).of_type(::RFinvoice::Type::NMToken2).with_required(false) }
end