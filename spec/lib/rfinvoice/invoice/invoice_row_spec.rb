require 'spec_helper'

RSpec.describe ::RFinvoice::InvoiceRow do
  subject { Fabricate.build(:invoice_row) }
  it_should_behave_like 'a typed attributes', %w(ArticleName), 'String0_100', false
  it_should_behave_like 'a typed attributes', %w(OriginalInvoiceNumber), 'String1_20', false
  it_should_behave_like 'a typed attributes', %w(RowVatCode), 'String0_10', false
  it_should_behave_like 'a typed attributes', %w(RowShortProposedAccountIdentifier RowNormalProposedAccountIdentifier), 'NMToken0_4', false
  it_should_behave_like 'a typed attributes', %w(RowSubIdentifier ArticleIdentifier ArticleGroupIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(SerialNumberIdentifier RowActionCode RowIdentifier RowPositionIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowOrderPositionIdentifier RowOrdererName RowSalesPersonName RowOrderConfirmationIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowDeliveryIdentifier RowQuotationIdentifier RowAgreementIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowRequestOfQuotationIdentifier RowPriceListIdentifier RowProjectReferenceIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowProposedAccountText RowAccountDimensionText RowSellerAccountText), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowDiscountTypeCode RowDiscountTypeText), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(ArticleInfoUrlText RowIdentifierUrlText RowDeliveryIdentifierUrlText), 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(RowQuotationIdentifierUrlText RowAgreementIdentifierUrlText), 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(RowRequestOfQuotationIdentifierUrlText RowPriceListIdentifierUrlText), 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(StartDate EndDate RowIdentifierDate RowOrderConfirmationDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(RowDeliveryDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(RowAveragePriceAmount RowDiscountAmount RowVatAmount RowVatExcludedAmount RowAmount), 'Amount', false
  it_should_behave_like 'a typed attributes', %w(UnitPriceAmount UnitPriceVatIncludedAmount), 'UnitAmount', false
  it_should_behave_like 'a typed attributes', %w(RowDiscountPercent RowVatRatePercent), 'PercentageType', false
  it_should_behave_like 'a typed array attributes', %w(RowFreeText), ::Array, 'String0_512', false
  it_should_behave_like 'a typed array attributes', %w(RowFreeText), ::Array, 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(OrderedQuantity), 'Quantity14', false
  it_should_behave_like 'a typed attributes', %w(ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity), 'Quantity14', false
  it_should_behave_like 'a typed attributes', %w(CreditRequestedQuantity ReturnedQuantity UnitPriceBaseQuantity), 'Quantity14', false
  it_should_behave_like 'a modelized array attributes', %w(OfferedQuantity DeliveredQuantity), ::Array, 'Quantity14', false
  it_should_behave_like 'a modelized array attributes', %w(SubInvoiceRow), ::Array, 'SubInvoiceRow', false

  # it_should_behave_like 'a complex attributes', %w(InvoiceTypeCode),  true
  # it_should_behave_like 'a typed array attributes', %w(InvoiceFreeText), ::RFinvoice::Type::Array0_2, 'String0_512', false
end
