require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SubInvoiceRow do
  let(:document) { Fabricate(:sub_invoice_row) }
  subject { described_class.new(document) }

  it_should_behave_like 'a simple properties', %w(ArticleIdentifier ArticleGroupIdentifier ArticleName ArticleInfoUrlText BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier).map { |x| "Sub#{x}" }
  it_should_behave_like 'a simple properties', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier OrderedQuantity ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity).map { |x| "Sub#{x}" }
  it_should_behave_like 'a simple properties', %w(CreditRequestedQuantity ReturnedQuantity UnitPriceBaseQuantity).map { |x| "Sub#{x}" }
  it_should_behave_like 'a simple properties', %w(UnitPriceBaseQuantity RowIdentifier RowIdentifierUrlText).map { |x| "Sub#{x}" }
  it_should_behave_like 'a simple properties', %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).map {|x| "Sub#{x}Identifier"}
  it_should_behave_like 'a simple properties', %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).map {|x| "Sub#{x}IdentifierUrlText"}
  it_should_behave_like 'a modelized properties', %w(RowIdentifierDate StartDate EndDate RowOrderConfirmationDate RowDeliveryDate RowPreviousMeterReadingDate RowLatestMeterReadingDate).map { |x| "Sub#{x}" }, 'Date'
  it_should_behave_like 'a modelized properties', %w(RowAveragePriceAmount RowDiscountAmount RowVatAmount RowVatExcludedAmount RowAmount).map { |x| "Sub#{x}" }, 'Amount'
  it_should_behave_like 'a modelized properties', %w(OrderedQuantity ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity CreditRequestedQuantity ReturnedQuantity).map { |x| "Sub#{x}" }, 'Quantity14'
  it_should_behave_like 'a modelized collections', %w(OfferedQuantity DeliveredQuantity).map { |x| "Sub#{x}" }, 'Quantity14'
  it_should_behave_like 'a decorated collections', %w(SubRowDefinitionDetails)
end
