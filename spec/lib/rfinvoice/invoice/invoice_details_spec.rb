require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceDetails do
  subject { Fabricate.build(:invoice_details) }
  it_should_behave_like 'a complex attributes', %w(InvoiceTypeCode InvoiceDate InvoiceTotalVatIncludedAmount),  true
  it_should_behave_like 'a complex attributes', %w(InvoicingPeriodStartDate InvoicingPeriodEndDate OrderDate OrderConfirmationDate),  false
  it_should_behave_like 'a complex attributes', %w(AgreementDate NotificationDate ControlDate),  false
  it_should_behave_like 'a complex attributes', %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount InvoiceTotalRoundoffAmount),  false
  it_should_behave_like 'a complex attributes collection', %w(DefinitionDetails), ::Array, false
  it_should_behave_like 'a typed attributes', %w(InvoiceTypeText), 'String1_35', true
  it_should_behave_like 'a typed attributes', %w(OriginCode), 'OriginCode', true
  it_should_behave_like 'a typed attributes', %w(OriginText SellerReferenceIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier AgreementTypeText), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(OrdererName SalesPersonName OrderConfirmationIdentifier AgreementIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(AgreementTypeCode NotificationIdentifier RegistrationNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(ControllerIdentifier ControllerName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceNumber), 'String1_20', true
  it_should_behave_like 'a typed attributes', %w(OriginalInvoiceNumber), 'String1_20', false
  it_should_behave_like 'a typed attributes', %w(SellerReferenceIdentifierUrlText OrderIdentifierUrlText AgreementIdentifierUrlText), 'String0_512', false

end
