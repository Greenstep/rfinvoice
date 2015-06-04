require 'spec_helper'

RSpec.describe ::RFinvoice::Invoice do

  let(:default_party_details) {
    ::RFinvoice::SellerPartyDetails.new(seller_organisation_name: ['Test Organization'])
  }

  before :each do
    default_party_details
    allow(::RFinvoice::SellerPartyDetails).to receive(:new).and_return(default_party_details)
  end

  %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName InvoiceRecipientOrganisationUnitNumber InvoiceRecipientSiteCode InvoiceRecipientContactPersonName BuyerOrganisationUnitNumber BuyerSiteCode BuyerContactPersonName DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName LayOutIdentifier InvoiceSegmentIdentifier).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String0_35) }
  end
  %w(VirtualBankBarcode InvoiceUrlNameText InvoiceUrlText StorageUrlText ControlStampText AcceptanceStampText).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::String0_512) }
  end

  it { is_expected.to have_virtus_attribute(:version).of_type(::String).with_default('2.01') }

  it { is_expected.to have_virtus_attribute(:seller_party_details).
                        of_type(::RFinvoice::SellerPartyDetails).with_default(default_party_details) }
  %w(InvoiceRecipientContactPersonDepartment InvoiceRecipientContactPersonFunction SellerContactPersonFunction SellerContactPersonDepartment BuyerContactPersonFunction BuyerContactPersonDepartment DeliveryContactPersonFunction DeliveryContactPersonDepartment).each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35]).with_required(false) }
  end
  it { is_expected.to have_virtus_attribute(:seller_communication_details).
                        of_type(::RFinvoice::SellerCommunicationDetails).with_required(false) }
  it { is_expected.to have_virtus_attribute(:message_transmission_details).
                        of_type(::RFinvoice::MessageTransmissionDetails).with_required(false) }
  it { is_expected.to have_virtus_attribute(:seller_information_details).
                        of_type(::RFinvoice::SellerInformationDetails).with_required(false) }
end
