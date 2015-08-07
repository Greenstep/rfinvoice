require 'spec_helper'

RSpec.describe ::RFinvoice::Invoice do

  subject { Fabricate(:invoice) }

  it_should_behave_like 'a typed attributes', %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName InvoiceRecipientOrganisationUnitNumber), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientSiteCode InvoiceRecipientContactPersonName BuyerOrganisationUnitNumber BuyerSiteCode BuyerContactPersonName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName LayOutIdentifier InvoiceSegmentIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(OriginalInvoiceFormat), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceRecipientLanguageCode), 'NMToken2', false
  it_should_behave_like 'a typed attributes', %w(VirtualBankBarcode StorageUrlText ControlStampText AcceptanceStampText), 'String0_512', false

  it { is_expected.to have_virtus_attribute(:version).of_type(::String).with_default('2.01') }

  it_should_behave_like 'a typed array attributes', %w(InvoiceRecipientContactPersonDepartment InvoiceRecipientContactPersonFunction), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(SellerContactPersonFunction SellerContactPersonDepartment BuyerContactPersonFunction), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(BuyerContactPersonDepartment DeliveryContactPersonFunction DeliveryContactPersonDepartment), ::RFinvoice::Type::Array0_2, 'String0_35', false
  it_should_behave_like 'a typed array attributes', %w(InvoiceUrlText InvoiceUrlNameText), ::Array, 'String0_512', false
  it_should_behave_like 'a complex attributes', %w(SellerCommunicationDetails MessageTransmissionDetails SellerInformationDetails InvoiceSenderPartyDetails), false
  it_should_behave_like 'a complex attributes', %w(InvoiceRecipientPartyDetails BuyerCommunicationDetails DeliveryCommunicationDetails DeliveryDetails), false
  it_should_behave_like 'a complex attributes', %w(InvoiceDetails SellerPartyDetails EpiDetails), false
end
