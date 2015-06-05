require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::MessageReceiverDetails do
  let(:document) { Fabricate.build(:message_receiver_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(ToIdentifier ToIntermediator)
end
