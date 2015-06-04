require 'spec_helper'

RSpec.describe ::RFinvoice::SellerInformationDetails do
  subject {
    described_class.new
  }
  %w(SellerHomeTownName SellerVatRegistrationText SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber SellerWebaddressIdentifier).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  end
  %w(SellerCommonEmailaddressIdentifier).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String0_70).with_required(false) }
  end
  it { is_expected.to have_virtus_attribute(:seller_official_postal_address_details).of_type(::RFinvoice::SellerOfficialPostalAddressDetails).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_account_details).of_type(::Array[::RFinvoice::SellerAccountDetails]).with_required(false) }
end
