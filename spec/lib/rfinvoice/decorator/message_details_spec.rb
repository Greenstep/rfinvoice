require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::MessageDetails do
  let(:document) { Fabricate.build(:message_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(MessageIdentifier MessageTimeStamp RefToMessageIdentifier ImplementationCode)
end
