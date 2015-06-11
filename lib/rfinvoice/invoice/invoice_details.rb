require 'rfinvoice/invoice/invoice_type_code'
require 'rfinvoice/invoice/invoice_date'
require 'rfinvoice/invoice/invoicing_period_start_date'
require 'rfinvoice/invoice/invoicing_period_end_date'
require 'rfinvoice/invoice/order_date'
require 'rfinvoice/invoice/order_confirmation_date'
require 'rfinvoice/invoice/agreement_date'
require 'rfinvoice/invoice/notification_date'
require 'rfinvoice/invoice/control_date'
require 'rfinvoice/invoice/definition_details'
require 'rfinvoice/invoice/invoice_total_vat_amount'
require 'rfinvoice/invoice/invoice_total_vat_included_amount'
require 'rfinvoice/invoice/invoice_total_vat_excluded_amount'
require 'rfinvoice/invoice/invoice_total_roundoff_amount'
require 'rfinvoice/invoice/other_currency_amount_vat_included_amount'
require 'rfinvoice/invoice/other_currency_amount_vat_excluded_amount'
require 'rfinvoice/invoice/credit_limit_amount'
require 'rfinvoice/invoice/operation_limit_amount'
require 'rfinvoice/invoice/monthly_amount'
require 'rfinvoice/invoice/vat_specification_details'

module RFinvoice
  class InvoiceDetails < Model
    add_complex_properties %w(InvoiceTypeCode), required: true
    add_string_simple_properties '1_35', %w(InvoiceTypeText), required: true
    add_simple_properties ::RFinvoice::Type::OriginCode, %w(OriginCode), required: true
    add_string_simple_properties '0_35', %w(OriginText), required: false
    add_string_simple_properties '1_20', %w(InvoiceNumber), required: true
    add_complex_properties %w(InvoiceDate), required: true
    add_string_simple_properties '1_20', %w(OriginalInvoiceNumber), required: false
    add_complex_properties %w(InvoicingPeriodStartDate InvoicingPeriodEndDate), required: false
    add_string_simple_properties '0_35', %w(SellerReferenceIdentifier), required: false
    add_string_simple_properties '0_512', %w(SellerReferenceIdentifierUrlText), required: false
    add_string_simple_properties '0_35', %w(BuyersSellerIdentifier SellersBuyerIdentifier OrderIdentifier), required: false
    add_string_simple_properties '0_512', %w(OrderIdentifierUrlText), required: false
    add_complex_properties %w(OrderDate), required: false
    add_string_simple_properties '0_35', %w(OrdererName SalesPersonName OrderConfirmationIdentifier), required: false
    add_complex_properties %w(OrderConfirmationDate), required: false
    add_string_simple_properties '0_35', %w(AgreementIdentifier), required: false
    add_string_simple_properties '0_512', %w(AgreementIdentifierUrlText), required: false
    add_string_simple_properties '0_35', %w(AgreementTypeText AgreementTypeCode), required: false
    add_complex_properties %w(AgreementDate), required: false
    add_string_simple_properties '0_35', %w(NotificationIdentifier), required: false
    add_complex_properties %w(NotificationDate), required: false
    add_string_simple_properties '0_35', %w(RegistrationNumberIdentifier ControllerIdentifier ControllerName), required: false
    add_complex_properties %w(ControlDate), required: false
    add_string_simple_properties '0_35', %w(BuyerReferenceIdentifier ProjectReferenceIdentifier), required: false
    add_complex_collection_array %w(DefinitionDetails), required: false
    add_complex_properties %w(InvoiceTotalVatExcludedAmount InvoiceTotalVatAmount), required: false
    add_complex_properties %w(InvoiceTotalVatIncludedAmount), required: true
    add_complex_properties %w(InvoiceTotalRoundoffAmount), required: false
    add_simple_properties ::RFinvoice::Type::ExchangeRate, %w(ExchangeRate), required: false
    add_complex_properties %w(OtherCurrencyAmountVatExcludedAmount), required: false
    add_complex_properties %w(OtherCurrencyAmountVatIncludedAmount CreditLimitAmount), required: false
    add_simple_properties ::RFinvoice::Type::Percentage, %w(CreditInterestPercent), required: false
    add_complex_properties %w(OperationLimitAmount MonthlyAmount), required: false
    add_nmtoken_simple_properties '0_4', %w(ShortProposedAccountIdentifier NormalProposedAccountIdentifier), required: false
    add_string_simple_properties '0_35', %w(ProposedAccountText AccountDimensionText SellerAccountText), required: false
    add_complex_collection_array %w(VatSpecificationDetails), required: false
    add_simple_collections %w(InvoiceFreeText), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_512], required: false
    add_string_simple_properties '0_70', %w(InvoiceVatFreeText), required: false
    # add_complex_collection_array %w(PaymentTermsDetails DiscountDetails), required: false
  end
end
