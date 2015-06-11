require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceDetails do
  let(:document) { Fabricate.build(:invoice_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(InvoiceTypeCode InvoiceDate InvoicingPeriodStartDate InvoicingPeriodEndDate)
  it_should_behave_like 'a decorated properties', %w(OrderDate OrderConfirmationDate AgreementDate NotificationDate ControlDate)
  it_should_behave_like 'a decorated properties', %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount InvoiceTotalVatIncludedAmount)
  it_should_behave_like 'a decorated properties', %w(InvoiceTotalRoundoffAmount OtherCurrencyAmountVatExcludedAmount)
  it_should_behave_like 'a decorated properties', %w(OtherCurrencyAmountVatIncludedAmount CreditLimitAmount OperationLimitAmount MonthlyAmount)
  it_should_behave_like 'a simple properties', %w(InvoiceTypeText OriginCode OriginText InvoiceNumber OriginalInvoiceNumber)
  it_should_behave_like 'a simple properties', %w(SellerReferenceIdentifier SellerReferenceIdentifierUrlText)
  it_should_behave_like 'a simple properties', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier)
  it_should_behave_like 'a simple properties', %w(OrderIdentifierUrlText OrdererName SalesPersonName OrderConfirmationIdentifier)
  it_should_behave_like 'a simple properties', %w(AgreementIdentifier AgreementIdentifierUrlText AgreementTypeText AgreementTypeCode)
  it_should_behave_like 'a simple properties', %w(NotificationIdentifier RegistrationNumberIdentifier ControllerIdentifier ControllerName)
  it_should_behave_like 'a simple properties', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier CreditInterestPercent)
  it_should_behave_like 'a simple properties', %w(ShortProposedAccountIdentifier NormalProposedAccountIdentifier)
  it_should_behave_like 'a simple properties', %w(ProposedAccountText AccountDimensionText SellerAccountText InvoiceVatFreeText)
  it_should_behave_like 'a simple collections', %w(InvoiceFreeText)
  it_should_behave_like 'a decorated collections', %w(DefinitionDetails)
end
