module RFinvoice
  class BaseInvoiceRow < Model
    class << self
      # rubocop:disable all
      def invoice_row_with_prefix(prefix = '')
        add_string_simple_properties '0_35', %w(ArticleIdentifier ArticleGroupIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_100', %w(ArticleName).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_512', %w(ArticleInfoUrlText).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(BuyerArticleIdentifier EanCode RowRegistrationNumberIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(SerialNumberIdentifier RowActionCode).map { |x| "#{prefix}#{x}" }, required: false
        add_modelized_collection_array %w(RowDefinitionDetails).map { |x| "#{prefix}#{x}" }, required: false
        add_modelized_collection %w(OfferedQuantity DeliveredQuantity).map { |x| "#{prefix}#{x}" }, ::Array[::RFinvoice::Quantity14], required: false
        add_quantity_properties '14', %w(OrderedQuantity ConfirmedQuantity PostDeliveredQuantity InvoicedQuantity).map { |x| "#{prefix}#{x}" }, required: false
        add_quantity_properties '14', %w(CreditRequestedQuantity ReturnedQuantity).map { |x| "#{prefix}#{x}" }, required: false
        add_date_properties %w(StartDate EndDate).map { |x| "#{prefix}#{x}" }, required: false
        add_properties_with_type %w(UnitPriceAmount UnitPriceVatIncludedAmount).map { |x| "#{prefix}#{x}" }, ::RFinvoice::UnitAmount, required: false
        add_quantity_properties '14', %w(UnitPriceBaseQuantity).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(RowIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_512', %w(RowIdentifierUrlText).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(RowOrderPositionIdentifier), required: false if prefix == ''
        add_date_properties %w(RowIdentifierDate).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(RowPositionIdentifier), required: false if prefix == ''
        add_string_simple_properties '1_20', %w(OriginalInvoiceNumber), required: false if prefix == ''
        add_string_simple_properties '0_35', %w(RowOrdererName RowSalesPersonName RowOrderConfirmationIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_date_properties %w(RowOrderConfirmationDate).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '1_20', %w(SubOriginalInvoiceNumber), required: false unless prefix == ''
        add_string_simple_properties '0_35', %w(RowDeliveryIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_512', %w(RowDeliveryIdentifierUrlText).map { |x| "#{prefix}#{x}" }, required: false
        add_date_properties %w(RowDeliveryDate).map { |x| "#{prefix}#{x}" }, required: false
        %w(RowQuotation RowAgreement RowRequestOfQuotation RowPriceList).each do |subprefix|
          add_string_simple_properties '0_35', ["#{prefix}#{subprefix}Identifier"], required: false
          add_string_simple_properties '0_512', ["#{prefix}#{subprefix}IdentifierUrlText"], required: false
        end
        add_string_simple_properties '0_35', %w(RowProjectReferenceIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        # add_modelized_properties %w(RowOverDuePaymentDetails) TODO: Implement this
        # add_modelized_collection_array %w(RowAnyPartyDetails) TODO: Implement this
        # add_modelized_properties %w(RowDeliveryDetails) TODO: Implement this
        add_nmtoken_simple_properties '0_4', %w(RowShortProposedAccountIdentifier RowNormalProposedAccountIdentifier).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(RowProposedAccountText RowAccountDimensionText RowSellerAccountText).map { |x| "#{prefix}#{x}" }, required: false
        add_simple_collections %w(RowFreeText).map { |x| "#{prefix}#{x}" }, ::Array[::RFinvoice::Type::String0_512], required: false
        add_quantity_properties '14', %w(RowUsedQuantity).map { |x| "#{prefix}#{x}" }, required: false
        add_date_properties %w(RowPreviousMeterReadingDate RowLatestMeterReadingDate).map { |x| "#{prefix}#{x}" }, required: false
        add_quantity_properties '14', %w(RowCalculatedQuantity).map { |x| "#{prefix}#{x}" }, required: false
        add_amount_properties %w(RowAveragePriceAmount).map { |x| "#{prefix}#{x}" }, required: false
        add_percentage_properties %w(RowDiscountPercent).map { |x| "#{prefix}#{x}" }, required: false
        add_amount_properties %w(RowDiscountAmount).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_35', %w(RowDiscountTypeCode RowDiscountTypeText).map { |x| "#{prefix}#{x}" }, required: false
        # add_modelized_collection_array %w(RowProgressiveDiscountDetails) TODO: Implement this
        add_percentage_properties %w(RowVatRatePercent).map { |x| "#{prefix}#{x}" }, required: false
        add_string_simple_properties '0_10', %w(RowVatCode).map { |x| "#{prefix}#{x}" }, required: false
        add_amount_properties %w(RowVatAmount RowVatExcludedAmount RowAmount).map { |x| "#{prefix}#{x}" }, required: false
        # add_modelized_properties %w(RowTransactionDetails), required: false TODO: Implement this
      end
      # rubocop:enable all
    end
  end
end
