require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::MessageSenderDetails do
  let(:document) { Fabricate.build(:message_sender_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(FromIdentifier FromIntermediator)
end
