module RFinvoice
  class InvoiceRow < Model
    add_string_simple_properties '0_35', %w(RowSubIdentifier ArticleIdentifier ArticleGroupIdentifier), required: false
    add_string_simple_properties '0_100', %w(ArticleName), required: false
    add_string_simple_properties '0_512', %w(ArticleInfoUrlText), required: false
    add_string_simple_properties '0_35', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier), required: false
    add_string_simple_properties '0_35', %w(SerialNumberIdentifier RowActionCode), required: false
    add_quantity_properties '14', %w(OfferedQuantity DeliveredQuantity OrderedQuantity), required: false
    add_quantity_properties '14', %w(ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity), required: false
    add_quantity_properties '14', %w(CreditRequestedQuantity ReturnedQuantity), required: false
    add_date_properties %w(StartDate EndDate), required: false
    add_properties_with_type %w(UnitPriceAmount UnitPriceVatIncludedAmount), ::RFinvoice::UnitAmount, required: false
    add_quantity_properties '14', %w(UnitPriceBaseQuantity), required: false
    add_string_simple_properties '0_35', %w(RowIdentifier), required: false
    add_string_simple_properties '0_512', %w(RowIdentifierUrlText), required: false
    add_string_simple_properties '0_35', %w(RowOrderPositionIdentifier), required: false
    add_date_properties %w(RowIdentifierDate), required: false
    add_string_simple_properties '0_35', %w(RowPositionIdentifier), required: false
    add_string_simple_properties '1_20', %w(OriginalInvoiceNumber), required: false
    add_string_simple_properties '0_35', %w(RowOrdererName RowSalesPersonName RowOrderConfirmationIdentifier), required: false
    add_date_properties %w(RowOrderConfirmationDate), required: false
    add_string_simple_properties '0_35', %w(RowDeliveryIdentifier), required: false
    add_string_simple_properties '0_512', %w(RowDeliveryIdentifierUrlText), required: false
    add_date_properties %w(RowDeliveryDate), required: false
    %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).each do |prefix|
      add_string_simple_properties '0_35', ["#{prefix}Identifier"], required: false
      add_string_simple_properties '0_512', ["#{prefix}IdentifierUrlText"], required: false
    end
    add_string_simple_properties '0_35', %w(RowProjectReferenceIdentifier), required: false
    add_nmtoken_simple_properties '0_4', %w(RowShortProposedAccountIdentifier RowNormalProposedAccountIdentifier), required: false
    add_string_simple_properties '0_35', %w(RowProposedAccountText RowAccountDimensionText RowSellerAccountText), required: false
    add_simple_collections %w(RowFreeText), ::Array[::RFinvoice::Type::String0_512], required: false
    add_quantity_properties '14', %w(RowUsedQuantity), required: false
    add_date_properties %w(RowPreviousMeterReadingDate RowLatestMeterReadingDate), required: false
    add_quantity_properties '14', %w(RowCalculatedQuantity), required: false
    add_amount_properties %w(RowAveragePriceAmount), required: false
    add_percentage_properties %w(RowDiscountPercent), required: false
    add_amount_properties %w(RowDiscountAmount), required: false
    add_string_simple_properties '0_35', %w(RowDiscountTypeCode RowDiscountTypeText), required: false
    add_percentage_properties %w(RowVatRatePercent), required: false
    add_string_simple_properties '0_10', %w(RowVatCode), required: false
    add_amount_properties %w(RowVatAmount RowVatExcludedAmount RowAmount), required: false
    # add_string_simple_properties '0_35', %w(), required: false
  end
end
