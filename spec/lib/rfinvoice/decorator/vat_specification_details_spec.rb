require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::VatSpecificationDetails do
  let(:document) { Fabricate.build(:vat_specification_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(VatBaseAmount VatRateAmount), 'Amount'
  it_should_behave_like 'a simple properties', %w(VatCode VatRatePercent)
  it_should_behave_like 'a simple collections', %w(VatFreeText)
end
