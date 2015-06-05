require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::MessageTransmissionDetails do
  let(:document) { Fabricate.build(:message_transmission_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(MessageSenderDetails MessageReceiverDetails MessageDetails)
end
