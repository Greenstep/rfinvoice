require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceDetails do
  let(:document) { Fabricate.build(:invoice_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(InvoiceTypeCode)
  it_should_behave_like 'a modelized properties', %w(InvoiceDate InvoicingPeriodStartDate InvoicingPeriodEndDate), 'Date'
  it_should_behave_like 'a modelized properties', %w(OrderDate OrderConfirmationDate AgreementDate NotificationDate ControlDate), 'Date'
  it_should_behave_like 'a modelized properties', %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount InvoiceTotalVatIncludedAmount), 'Amount'
  it_should_behave_like 'a modelized properties', %w(InvoiceTotalRoundoffAmount OtherCurrencyAmountVatExcludedAmount), 'Amount'
  it_should_behave_like 'a modelized properties', %w(OtherCurrencyAmountVatIncludedAmount CreditLimitAmount OperationLimitAmount MonthlyAmount), 'Amount'
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
  it_should_behave_like 'a decorated collections', %w(DefinitionDetails DiscountDetails PaymentTermsDetails)
end
