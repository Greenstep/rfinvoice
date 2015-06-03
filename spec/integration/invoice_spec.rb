require 'spec_helper'

RSpec.describe 'Invoice generation' do
  let(:seller_postal_address_details) {
    ::RFinvoice::SellerPostalAddressDetails.new(
      seller_town_name:            'Cupertino',
      seller_post_code_identifier: '95014',
      seller_street_name:          ['Infinite Loop 1']
    )

  }

  let(:seller_information_details) {
    ::RFinvoice::SellerInformationDetails.new(
      seller_home_town_name: ::FFaker::Address.city,
      seller_vat_registration_text: 'Rekisteröinti vireillä'
    )
  }

  let(:seller_communication_details) {
    ::RFinvoice::SellerCommunicationDetails.new(
      seller_phone_number_identifier: ::FFaker::PhoneNumber.phone_number,
      seller_emailaddress_identifier: ::FFaker::Internet.email
    )
  }

  let(:seller_party_details) {
    ::RFinvoice::SellerPartyDetails.new(
      seller_organisation_name:       ['Test', 'Organization'],
      seller_organisation_department: ['Supper', 'Pupper'],
      seller_postal_address_details:  seller_postal_address_details
    )
  }
  let(:invoice) {
    ::RFinvoice::Invoice.new(
      seller_party_details:        seller_party_details,
      seller_communication_details: seller_communication_details,
      seller_information_details: seller_information_details
    )
  }
  let(:xml) { invoice.to_xml }

  it 'should have valid XML' do
    schema   = Nokogiri::XML::Schema(::File.read(::File.expand_path('../../support/xsd/2.01.xsd', __FILE__)))
    document = Nokogiri::XML(xml)
    puts xml
    errors = schema.validate(document)
    errors.each do |error|
      puts error.message
    end
    expect(errors.size).to eq(0)
  end
end