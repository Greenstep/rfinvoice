require 'spec_helper'

RSpec.describe ::RFinvoice::DiscountDetails do
  subject { Fabricate.build(:discount_details) }
  it_should_behave_like 'a complex attributes', %w(Amount), false
  it_should_behave_like 'a typed attributes', %w(Percent), 'Percentage', false
  it_should_behave_like 'a typed attributes', %w(FreeText), 'String1_70', false
end
