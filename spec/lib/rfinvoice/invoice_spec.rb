require 'spec_helper'

RSpec.describe ::RFinvoice::Invoice do

  let(:default_party_details) {
    ::RFinvoice::SellerPartyDetails.new(seller_organisation_name: ['Test Organization'])
  }

  before :each do
    default_party_details
    allow(::RFinvoice::SellerPartyDetails).to receive(:new).and_return(default_party_details)
  end

  described_class::STRINGS_0_35.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35) }
  end
  described_class::STRINGS_0_512.each do |key|
    it { is_expected.to have_attribute(key.underscore).of_type(::RFinvoice::Type::String0_512) }
  end

  it { is_expected.to have_attribute(:version).of_type(::String).with_default('2.01') }

  it { is_expected.to have_attribute(:seller_party_details).
                        of_type(::RFinvoice::SellerPartyDetails).with_default(default_party_details) }
  it { is_expected.to have_attribute(:seller_contact_person_function).of_type(::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35]).with_required(false) }
  it { is_expected.to have_attribute(:seller_contact_person_department).of_type(::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35]).with_required(false) }
  it { is_expected.to have_attribute(:seller_communication_details).
                        of_type(::RFinvoice::SellerCommunicationDetails).with_required(false) }
  it { is_expected.to have_attribute(:message_transmission_details).
                        of_type(::RFinvoice::MessageTransmissionDetails).with_required(false) }
  it { is_expected.to have_attribute(:seller_information_details).
                        of_type(::RFinvoice::SellerInformationDetails).with_required(false) }
end
