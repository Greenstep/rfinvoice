require 'spec_helper'

RSpec.describe ::RFinvoice::SellerCommunicationDetails do
  it_should_behave_like 'a typed attributes', %w(SellerPhoneNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(SellerEmailaddressIdentifier), 'String0_70', false
end
