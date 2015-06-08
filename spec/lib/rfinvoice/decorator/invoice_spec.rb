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

  it_should_behave_like 'a simple properties', %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName InvoiceRecipientOrganisationUnitNumber)
  it_should_behave_like 'a simple properties', %w(InvoiceRecipientSiteCode InvoiceRecipientContactPersonName BuyerOrganisationUnitNumber BuyerSiteCode)
  it_should_behave_like 'a simple properties', %w(BuyerContactPersonName DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName)
  it_should_behave_like 'a simple properties', %w(LayOutIdentifier InvoiceSegmentIdentifier VirtualBankBarcode InvoiceUrlNameText InvoiceUrlText StorageUrlText)
  it_should_behave_like 'a simple properties', %w(ControlStampText AcceptanceStampText OriginalInvoiceFormat InvoiceRecipientLanguageCode)
  it_should_behave_like 'a simple collections', %w(DeliveryContactPersonFunction DeliveryContactPersonDepartment SellerContactPersonFunction SellerContactPersonDepartment )
  it_should_behave_like 'a simple collections', %w(InvoiceRecipientContactPersonDepartment BuyerContactPersonFunction BuyerContactPersonDepartment InvoiceRecipientContactPersonFunction)
  it_should_behave_like 'a decorated properties', %w(SellerCommunicationDetails MessageTransmissionDetails SellerInformationDetails SellerPartyDetails InvoiceSenderPartyDetails)
  it_should_behave_like 'a decorated properties', %w(InvoiceRecipientCommunicationDetails BuyerPartyDetails BuyerCommunicationDetails DeliveryPartyDetails)
  it_should_behave_like 'a decorated properties', %w(DeliveryDetails)
end
