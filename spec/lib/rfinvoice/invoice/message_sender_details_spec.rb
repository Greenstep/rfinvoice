require 'spec_helper'

RSpec.describe ::RFinvoice::MessageSenderDetails do
  subject { described_class.new(from_identifier: 'Foo', from_intermediator: 'Bar') }
  it { is_expected.to have_attribute(:from_identifier).of_type(::RFinvoice::Type::String2_35).with_required(true) }
  it { is_expected.to have_attribute(:from_intermediator).of_type(::RFinvoice::Type::String2_35).with_required(true) }
end
