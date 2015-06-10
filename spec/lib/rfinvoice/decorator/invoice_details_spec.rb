require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceDetails do
  let(:document) { Fabricate.build(:invoice_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(InvoiceTypeCode InvoiceDate InvoicingPeriodStartDate InvoicingPeriodEndDate)
  it_should_behave_like 'a decorated properties', %w(OrderDate OrderConfirmationDate AgreementDate NotificationDate ControlDate)
  it_should_behave_like 'a decorated properties', %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount InvoiceTotalVatIncludedAmount)
  it_should_behave_like 'a decorated properties', %w(InvoiceTotalRoundoffAmount)
  it_should_behave_like 'a simple properties', %w(InvoiceTypeText OriginCode OriginText InvoiceNumber OriginalInvoiceNumber)
  it_should_behave_like 'a simple properties', %w(SellerReferenceIdentifier SellerReferenceIdentifierUrlText)
  it_should_behave_like 'a simple properties', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier)
  it_should_behave_like 'a simple properties', %w(OrderIdentifierUrlText OrdererName SalesPersonName OrderConfirmationIdentifier)
  it_should_behave_like 'a simple properties', %w(AgreementIdentifier AgreementIdentifierUrlText AgreementTypeText AgreementTypeCode)
  it_should_behave_like 'a simple properties', %w(NotificationIdentifier RegistrationNumberIdentifier ControllerIdentifier ControllerName)
  it_should_behave_like 'a simple properties', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier)
  it_should_behave_like 'a simple properties', %w()
  it_should_behave_like 'a simple collections', %w()

  it_should_behave_like 'a decorated collections', %w(DefinitionDetails)
end