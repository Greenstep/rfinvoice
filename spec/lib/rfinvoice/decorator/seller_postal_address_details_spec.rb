require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerPostalAddressDetails do
  let(:document) { ::RFinvoice::SellerPostalAddressDetails.new(seller_town_name:            'Cupertino',
                                                               seller_post_code_identifier: '95014',
                                                               seller_street_name:          ['Infinite Loop 1']) }
  subject { described_class.new(document) }
  %w(SellerTownName SellerPostCodeIdentifier CountryName CountryCode SellerPostOfficeBoxIdentifier SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
  it { is_expected.to have_representable_collection(:seller_street_name).as('SellerStreetName') }
end
