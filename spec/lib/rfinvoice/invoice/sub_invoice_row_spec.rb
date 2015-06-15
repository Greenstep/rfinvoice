require 'spec_helper'

RSpec.describe ::RFinvoice::SubInvoiceRow do
  subject { Fabricate.build(:sub_invoice_row) }
  it_should_behave_like 'a typed attributes', %w(SubArticleName), 'String0_100', false
  it_should_behave_like 'a typed attributes', %w(SubOriginalInvoiceNumber), 'String1_20', false
  it_should_behave_like 'a typed attributes', %w(SubRowVatCode), 'String0_10', false
  it_should_behave_like 'a typed attributes', %w(SubIdentifier SubRowPositionIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowShortProposedAccountIdentifier RowNormalProposedAccountIdentifier).map { |x| "Sub#{x}" }, 'NMToken0_4', false
  it_should_behave_like 'a typed attributes', %w(ArticleIdentifier ArticleGroupIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(SerialNumberIdentifier RowActionCode RowIdentifier RowPositionIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowOrdererName RowSalesPersonName RowOrderConfirmationIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowDeliveryIdentifier RowQuotationIdentifier RowAgreementIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowRequestOfQuotationIdentifier RowPriceListIdentifier RowProjectReferenceIdentifier).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowProposedAccountText RowAccountDimensionText RowSellerAccountText).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(RowDiscountTypeCode RowDiscountTypeText).map { |x| "Sub#{x}" }, 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(ArticleInfoUrlText RowIdentifierUrlText RowDeliveryIdentifierUrlText).map { |x| "Sub#{x}" }, 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(RowQuotationIdentifierUrlText RowAgreementIdentifierUrlText).map { |x| "Sub#{x}" }, 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(RowRequestOfQuotationIdentifierUrlText RowPriceListIdentifierUrlText).map { |x| "Sub#{x}" }, 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(StartDate EndDate RowIdentifierDate RowOrderConfirmationDate).map { |x| "Sub#{x}" }, 'Date', false
  it_should_behave_like 'a typed attributes', %w(RowDeliveryDate).map { |x| "Sub#{x}" }, 'Date', false
  it_should_behave_like 'a typed attributes', %w(RowAveragePriceAmount RowDiscountAmount RowVatAmount RowVatExcludedAmount RowAmount).map { |x| "Sub#{x}" }, 'Amount', false
  it_should_behave_like 'a typed attributes', %w(UnitPriceAmount UnitPriceVatIncludedAmount).map { |x| "Sub#{x}" }, 'UnitAmount', false
  it_should_behave_like 'a typed attributes', %w(RowDiscountPercent RowVatRatePercent).map { |x| "Sub#{x}" }, 'PercentageType', false
  it_should_behave_like 'a typed array attributes', %w(SubRowFreeText), ::Array, 'String0_512', false
  it_should_behave_like 'a typed array attributes', %w(SubRowFreeText), ::Array, 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(SubOrderedQuantity), 'Quantity14', false
  it_should_behave_like 'a typed attributes', %w(ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity).map { |x| "Sub#{x}" }, 'Quantity14', false
  it_should_behave_like 'a typed attributes', %w(CreditRequestedQuantity ReturnedQuantity UnitPriceBaseQuantity).map { |x| "Sub#{x}" }, 'Quantity14', false
  it_should_behave_like 'a modelized array attributes', %w(OfferedQuantity DeliveredQuantity).map { |x| "Sub#{x}" }, ::Array, 'Quantity14', false
end
