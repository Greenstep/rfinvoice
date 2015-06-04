require 'spec_helper'

RSpec.describe ::RFinvoice::MessageDetails do
  subject {
    described_class.new(
      message_identifier: 'RFinvoice',
      message_time_stamp: '12-12-2014 12:12'
    )
  }
  it { is_expected.to have_virtus_attribute(:message_identifier).of_type(::RFinvoice::Type::String2_48).with_required(true) }
  it { is_expected.to have_virtus_attribute(:message_time_stamp).of_type(::RFinvoice::Type::String2_35).with_required(true) }
  it { is_expected.to have_virtus_attribute(:implementation_code).of_type(::RFinvoice::Type::String0_4).with_required(false) }
  it { is_expected.to have_virtus_attribute(:ref_to_message_identifier).of_type(::RFinvoice::Type::String0_48).with_required(false) }
end
