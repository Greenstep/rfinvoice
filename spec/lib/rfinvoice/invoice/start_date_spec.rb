require 'spec_helper'

RSpec.describe ::RFinvoice::StartDate do
  subject { Fabricate.build(:start_date) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::Date).with_required(true) }
  it { is_expected.to have_virtus_attribute(:format).of_type(::String).with_required(true).with_default('CCYYMMDD') }
end
