require 'spec_helper'

RSpec.describe ::RFinvoice::SellerPartyDetails do
  subject { described_class.new(seller_organisation_name: ['Test Organization']) }
  it { is_expected.to have_virtus_attribute(:seller_party_identifier).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_organisation_tax_code).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_party_identifier_url_text).of_type(::RFinvoice::Type::String0_512).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_organisation_tax_code_url_text).of_type(::RFinvoice::Type::String0_512).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_code).of_type(::RFinvoice::PartyIdentifier).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_organisation_name).of_type(::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70]).with_required(true) }
  it { is_expected.to have_virtus_attribute(:seller_organisation_department).of_type(::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35]).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_postal_address_details).of_type(::RFinvoice::SellerPostalAddressDetails).with_required(false) }
end
