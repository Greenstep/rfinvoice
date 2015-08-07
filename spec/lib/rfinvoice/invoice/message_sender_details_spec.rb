require 'spec_helper'

RSpec.describe ::RFinvoice::MessageSenderDetails do
  subject { Fabricate.build(:message_sender_details) }
  it_should_behave_like 'a typed attributes', %w(FromIdentifier FromIntermediator), 'String2_35', false
end
