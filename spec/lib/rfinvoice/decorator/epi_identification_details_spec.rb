require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiIdentificationDetails do
  let(:document) { Fabricate.build(:epi_identification_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(EpiDate), 'Date'
  it_should_behave_like 'a simple properties', %w(EpiReference EpiUrl EpiEmail)
  it_should_behave_like 'a simple collections', %w(EpiOrderInfo)
end
