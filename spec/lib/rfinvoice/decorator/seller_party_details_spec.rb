require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerPartyDetails do
  let(:document) { ::RFinvoice::SellerPartyDetails.new(seller_organisation_name: ['Test Organization']) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_collection(:seller_organisation_name)
                        .as('SellerOrganisationName') }
  it { is_expected.to have_representable_collection(:seller_organisation_department)
                        .as('SellerOrganisationDepartment') }
  it { is_expected.to have_representable_property(:seller_code).as('SellerCode').extends(::RFinvoice::Decorator::PartyIdentifier) }
  it { is_expected.to have_representable_property(:seller_postal_address_details).as('SellerPostalAddressDetails').extends(::RFinvoice::Decorator::SellerPostalAddressDetails) }
  %w(SellerPartyIdentifier SellerOrganisationTaxCode SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
end