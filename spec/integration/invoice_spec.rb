require 'spec_helper'

RSpec.describe 'Invoice generation' do
  let(:invoice) { Fabricate(:invoice) }
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
