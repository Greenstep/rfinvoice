require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DiscountDetails do
  let(:document) { Fabricate.build(:discount_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(Amount)
  it_should_behave_like 'a simple properties', %w(Percent FreeText)
end
