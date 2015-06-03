require 'spec_helper'

RSpec.describe 'Invoice generation' do

  let(:seller_party_details) {
    ::RFinvoice::SellerPartyDetails.new(
      seller_organisation_name: ['Test', 'Organization'],
      seller_organisation_department: ['Supper', 'Pupper']
    )
  }
  let(:invoice) {
    ::RFinvoice::Invoice.new(
      seller_party_details: seller_party_details
    )
  }
  let(:xml) { invoice.to_xml }

  it 'should have valid XML' do
    schema = Nokogiri::XML::Schema(::File.read(::File.expand_path('../../support/xsd/2.01.xsd', __FILE__)))
    document = Nokogiri::XML(xml)
    puts xml
    errors = schema.validate(document)
    errors.each do |error|
      puts error.message
    end
    expect(errors.size).to eq(0)
  end
end