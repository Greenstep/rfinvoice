require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::BuyerCommunicationDetails do
  let(:document) { Fabricate(:buyer_communication_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(BuyerPhoneNumberIdentifier BuyerEmailaddressIdentifier)
end
