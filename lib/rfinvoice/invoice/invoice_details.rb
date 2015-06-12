require 'rfinvoice/invoice/invoice_type_code'
require 'rfinvoice/invoice/definition_details'
require 'rfinvoice/invoice/vat_specification_details'
require 'rfinvoice/invoice/discount_details'
require 'rfinvoice/invoice/payment_terms_details'

module RFinvoice
  class InvoiceDetails < Model
    add_modelized_properties %w(InvoiceTypeCode), required: true
    add_string_simple_properties '1_35', %w(InvoiceTypeText), required: true
    add_simple_properties ::RFinvoice::Type::OriginCodeType, %w(OriginCode), required: true
    add_string_simple_properties '0_35', %w(OriginText), required: false
    add_string_simple_properties '1_20', %w(InvoiceNumber), required: true
    add_date_properties %w(InvoiceDate), required: true
    add_string_simple_properties '1_20', %w(OriginalInvoiceNumber), required: false
    add_date_properties %w(InvoicingPeriodStartDate InvoicingPeriodEndDate), required: false
    add_string_simple_properties '0_35', %w(SellerReferenceIdentifier), required: false
    add_string_simple_properties '0_512', %w(SellerReferenceIdentifierUrlText), required: false
    add_string_simple_properties '0_35', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier), required: false
    add_string_simple_properties '0_512', %w(OrderIdentifierUrlText), required: false
    add_date_properties %w(OrderDate), required: false
    add_string_simple_properties '0_35', %w(OrdererName SalesPersonName OrderConfirmationIdentifier), required: false
    add_date_properties %w(OrderConfirmationDate), required: false
    add_string_simple_properties '0_35', %w(AgreementIdentifier), required: false
    add_string_simple_properties '0_512', %w(AgreementIdentifierUrlText), required: false
    add_string_simple_properties '0_35', %w(AgreementTypeText AgreementTypeCode), required: false
    add_date_properties %w(AgreementDate), required: false
    add_string_simple_properties '0_35', %w(NotificationIdentifier), required: false
    add_date_properties %w(NotificationDate), required: false
    add_string_simple_properties '0_35', %w(RegistrationNumberIdentifier ControllerIdentifier ControllerName), required: false
    add_date_properties %w(ControlDate), required: false
    add_string_simple_properties '0_35', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier), required: false
    add_modelized_collection_array %w(DefinitionDetails), required: false
    add_amount_properties %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount), required: false
    add_amount_properties %w(InvoiceTotalVatIncludedAmount), required: true
    add_amount_properties %w(InvoiceTotalRoundoffAmount), required: false
    add_simple_properties ::RFinvoice::Type::ExchangeRateType, %w(ExchangeRate), required: false
    add_amount_properties %w(OtherCurrencyAmountVatExcludedAmount), required: false
    add_amount_properties %w(OtherCurrencyAmountVatIncludedAmount CreditLimitAmount), required: false
    add_simple_properties ::RFinvoice::Type::PercentageType, %w(CreditInterestPercent), required: false
    add_amount_properties %w(OperationLimitAmount MonthlyAmount), required: false
    add_nmtoken_simple_properties '0_4', %w(ShortProposedAccountIdentifier NormalProposedAccountIdentifier), required: false
    add_string_simple_properties '0_35', %w(ProposedAccountText AccountDimensionText SellerAccountText), required: false
    add_modelized_collection_array %w(VatSpecificationDetails), required: false
    add_simple_collections %w(InvoiceFreeText), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_512], required: false
    add_string_simple_properties '0_70', %w(InvoiceVatFreeText), required: false
    add_modelized_collection_array %w(PaymentTermsDetails DiscountDetails), required: false
  end
end
