require 'spec_helper'

RSpec.describe ::RFinvoice::MessageReceiverDetails do
  subject { Fabricate.build(:message_receiver_details) }
  it_should_behave_like 'a typed attributes', %w(ToIdentifier ToIntermediator), 'String2_35', false
end
