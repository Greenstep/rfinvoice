require 'spec_helper'

RSpec.describe ::RFinvoice::SellerCommunicationDetails do
  it { is_expected.to have_attribute('seller_phone_number_identifier').of_type(::RFinvoice::Type::String0_35).with_required(false) }
  it { is_expected.to have_attribute('seller_emailaddress_identifier').of_type(::RFinvoice::Type::String0_70).with_required(false) }
end
