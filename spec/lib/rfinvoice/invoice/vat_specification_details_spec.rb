require 'spec_helper'

RSpec.describe ::RFinvoice::VatSpecificationDetails do
  subject { Fabricate.build(:vat_specification_details) }
  it_should_behave_like 'a typed attributes', %w(VatBaseAmount VatRateAmount), 'Amount', false
  it_should_behave_like 'a typed attributes', %w(VatCode), 'String0_10', false
  it_should_behave_like 'a typed attributes', %w(VatRatePercent), 'PercentageType', false
  it_should_behave_like 'a typed array attributes', %w(VatFreeText), ::RFinvoice::Type::Array0_3, 'String0_70', false
end
