require 'spec_helper'

RSpec.describe ::RFinvoice::MessageTransmissionDetails do
  subject {
    described_class.new(
      message_sender_details: { from_identifier: 'Foo', from_intermediator: 'Bar' },
      message_receiver_details: { to_identifier: 'Foo', to_intermediator: 'Bar' },
      message_details: { message_identifier: 'RFinvoice', message_time_stamp: '12-12-2014 12:12' }
    )
  }
  it { is_expected.to have_attribute(:message_sender_details).of_type(::RFinvoice::MessageSenderDetails).with_required(true) }
end
