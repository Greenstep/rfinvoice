require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::Invoice do
  let(:default_party_details) {
    ::RFinvoice::SellerPartyDetails.new(seller_organisation_name: ['Test Organization'])
  }
  before :each do
    default_party_details
    allow(::RFinvoice::SellerPartyDetails).to receive(:new).and_return(default_party_details)
  end
  let(:document) { ::RFinvoice::Invoice.new }
  subject { described_class.new(document) }

  it { is_expected.to have_representable_property(:version).as('Version').with_attribute }
  it { is_expected.to have_representable_property(:xmlns_xsi).as('xmlns:xsi').with_attribute }
  it { is_expected.to have_representable_property(:xsi_nonamespace).as('xsi:noNamespaceSchemaLocation').with_attribute }

  %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName InvoiceRecipientOrganisationUnitNumber).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
  %w(InvoiceRecipientSiteCode InvoiceRecipientContactPersonName BuyerOrganisationUnitNumber BuyerSiteCode).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
  %w(BuyerContactPersonName DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
  %w(LayOutIdentifier InvoiceSegmentIdentifier VirtualBankBarcode InvoiceUrlNameText InvoiceUrlText StorageUrlText ControlStampText AcceptanceStampText).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
  %w(SellerContactPersonFunction SellerContactPersonDepartment InvoiceRecipientContactPersonFunction InvoiceRecipientContactPersonDepartment BuyerContactPersonFunction BuyerContactPersonDepartment DeliveryContactPersonFunction DeliveryContactPersonDepartment).each do |key|
    it { is_expected.to have_representable_collection(key.underscore).as(key) }
  end
  %w(SellerCommunicationDetails MessageTransmissionDetails SellerInformationDetails SellerPartyDetails InvoiceSenderPartyDetails).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key).extends(::RFinvoice::Decorator.const_get(key)) }
  end
end
