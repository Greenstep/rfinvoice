require 'spec_helper'

RSpec.describe 'Invoice generation' do

  let(:invoice) { ::RFinvoice::Invoice.new }
  let(:xml) { invoice.to_xml }

  it 'should have valid XML' do
    schema = Nokogiri::XML::Schema(::File.read(::File.expand_path('../../support/xsd/2.01.xsd', __FILE__)))
    document = Nokogiri::XML(xml)
    puts xml
    expect(schema.valid?(document)).to be_truthy
  end
end