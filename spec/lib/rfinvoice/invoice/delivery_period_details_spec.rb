require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryPeriodDetails do
  subject { Fabricate.build(:delivery_period_details) }
  it_should_behave_like 'a typed attributes', %w(StartDate EndDate), 'Date', true
end
