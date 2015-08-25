require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceDetails do
  subject { Fabricate.build(:invoice_details) }
  it_should_behave_like 'a typed attributes', %w(InvoiceDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(InvoiceTotalVatIncludedAmount), 'Amount', false
  it_should_behave_like 'a complex attributes', %w(InvoiceTypeCode),  false
  it_should_behave_like 'a typed attributes', %w(InvoicingPeriodStartDate InvoicingPeriodEndDate OrderDate OrderConfirmationDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(AgreementDate NotificationDate ControlDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount InvoiceTotalRoundoffAmount), 'Amount', false
  it_should_behave_like 'a typed attributes', %w(OtherCurrencyAmountVatExcludedAmount OtherCurrencyAmountVatIncludedAmount CreditLimitAmount), 'Amount', false
  it_should_behave_like 'a typed attributes', %w(OperationLimitAmount MonthlyAmount), 'Amount', false
  it_should_behave_like 'a complex attributes collection', %w(DefinitionDetails DiscountDetails PaymentTermsDetails), ::Array, false
  it_should_behave_like 'a typed attributes', %w(InvoiceTypeText), 'String1_35', false
  it_should_behave_like 'a typed attributes', %w(OriginCode), 'OriginCodeType', false
  it_should_behave_like 'a typed attributes', %w(CreditInterestPercent), 'PercentageType', false
  it_should_behave_like 'a typed attributes', %w(OriginText SellerReferenceIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier AgreementTypeText), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(OrdererName SalesPersonName OrderConfirmationIdentifier AgreementIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(AgreementTypeCode NotificationIdentifier RegistrationNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(ControllerIdentifier ControllerName), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(ProposedAccountText AccountDimensionText SellerAccountText), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(InvoiceVatFreeText), 'String0_70', false
  it_should_behave_like 'a typed attributes', %w(ShortProposedAccountIdentifier NormalProposedAccountIdentifier), 'NMToken0_4', false
  it_should_behave_like 'a typed attributes', %w(InvoiceNumber), 'String1_20', true
  it_should_behave_like 'a typed attributes', %w(OriginalInvoiceNumber), 'String1_20', false
  it_should_behave_like 'a typed attributes', %w(SellerReferenceIdentifierUrlText OrderIdentifierUrlText AgreementIdentifierUrlText), 'String0_512', false
  it_should_behave_like 'a typed array attributes', %w(InvoiceFreeText), ::RFinvoice::Type::Array0_2, 'String0_512', false
end
