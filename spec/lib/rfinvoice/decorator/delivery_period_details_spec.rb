require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DeliveryPeriodDetails do
  let(:document) { Fabricate.build(:delivery_period_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(StartDate EndDate), 'Date'
end
