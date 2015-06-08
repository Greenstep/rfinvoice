require 'spec_helper'

RSpec.describe ::RFinvoice::BuyerCommunicationDetails do
  it_should_behave_like 'a typed attributes', %w(BuyerPhoneNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerEmailaddressIdentifier), 'String0_70', false
end
