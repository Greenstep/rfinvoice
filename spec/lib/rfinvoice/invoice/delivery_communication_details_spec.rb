require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryCommunicationDetails do
  it_should_behave_like 'a typed attributes', %w(DeliveryPhoneNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(DeliveryEmailaddressIdentifier), 'String0_70', false
end
