require 'spec_helper'

RSpec.describe ::RFinvoice::MessageTransmissionDetails do
  subject { Fabricate.build(:message_transmission_details) }
  it_should_behave_like 'a complex attributes', %w(MessageSenderDetails MessageReceiverDetails MessageDetails), true
end
