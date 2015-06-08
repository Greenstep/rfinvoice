require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DeliveryCommunicationDetails do
  let(:document) { Fabricate(:delivery_communication_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(DeliveryPhoneNumberIdentifier DeliveryEmailaddressIdentifier)
end
