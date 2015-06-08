require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryPeriodDetails do
  subject { Fabricate.build(:delivery_period_details) }
  it_should_behave_like 'a complex attributes', %w(StartDate EndDate), true
end
