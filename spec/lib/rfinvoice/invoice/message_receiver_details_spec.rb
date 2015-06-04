require 'spec_helper'

RSpec.describe ::RFinvoice::MessageReceiverDetails do
  subject { described_class.new(to_identifier: 'Foo', to_intermediator: 'Bar') }
  it { is_expected.to have_virtus_attribute(:to_identifier).of_type(::RFinvoice::Type::String2_35).with_required(true) }
  it { is_expected.to have_virtus_attribute(:to_intermediator).of_type(::RFinvoice::Type::String2_35).with_required(true) }
end
