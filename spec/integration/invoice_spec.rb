require 'spec_helper'

RSpec.describe 'Invoice generation' do
  let(:invoice) { Fabricate(:invoice) }
  let(:xml) { invoice.to_xml }

  it 'should have valid XML' do
    schema   = Nokogiri::XML::Schema(::File.read(::File.expand_path('../../support/xsd/2.01.xsd', __FILE__)))
    document = Nokogiri::XML(xml)
    errors   = schema.validate(document)
    errors.each do |error|
      puts error.message
    end
    expect(errors.size).to eq(0)
  end

  it 'should parse self generated xml without errors' do
    expect { ::RFinvoice::Invoice.from_xml(xml) }.to_not raise_exception
  end
  %w(1.0 1.1 1.2 2.01).each do |key|
    it "should parse #{key} xml without errors" do
      xml = ::File.read(::File.expand_path("../../support/files/#{key}.xml", __FILE__))
      expect { ::RFinvoice::Invoice.from_xml(xml) }.to_not raise_exception
    end
  end
end
