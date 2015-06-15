require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::InvoiceRow do
  let(:document) { Fabricate(:invoice_row) }
  subject { described_class.new(document) }

  it_should_behave_like 'a simple properties', %w(ArticleIdentifier ArticleGroupIdentifier ArticleName ArticleInfoUrlText BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier)
  it_should_behave_like 'a simple properties', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier OrderedQuantity ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity)
  it_should_behave_like 'a simple properties', %w(CreditRequestedQuantity ReturnedQuantity UnitPriceBaseQuantity)
  it_should_behave_like 'a simple properties', %w(UnitPriceBaseQuantity RowIdentifier RowIdentifierUrlText RowOrderPositionIdentifier)
  it_should_behave_like 'a simple properties', %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).map {|x| "#{x}Identifier"}
  it_should_behave_like 'a simple properties', %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).map {|x| "#{x}IdentifierUrlText"}
  it_should_behave_like 'a modelized properties', %w(RowIdentifierDate StartDate EndDate RowOrderConfirmationDate RowDeliveryDate RowPreviousMeterReadingDate RowLatestMeterReadingDate), 'Date'
  it_should_behave_like 'a modelized properties', %w(RowAveragePriceAmount RowDiscountAmount RowVatAmount RowVatExcludedAmount RowAmount), 'Amount'
  it_should_behave_like 'a modelized properties', %w(OrderedQuantity ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity CreditRequestedQuantity ReturnedQuantity), 'Quantity14'
  it_should_behave_like 'a modelized collections', %w(OfferedQuantity DeliveredQuantity), 'Quantity14'
  it_should_behave_like 'a decorated collections', %w(SubInvoiceRow RowDefinitionDetails)
end
