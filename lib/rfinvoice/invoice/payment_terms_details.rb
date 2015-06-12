require 'rfinvoice/invoice/cash_discount_vat_details'

module RFinvoice
  class PaymentTermsDetails < Model
    add_simple_collections %w(PaymentTermsFreeText), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_70], required: false
    add_date_properties %w(InvoiceDueDate CashDiscountDate), required: false
    add_amount_properties %w(CashDiscountBaseAmount), required: false
    add_percentage_properties %w(CashDiscountPercent), required: false
    add_amount_properties %w(CashDiscountAmount CashDiscountExcludingVatAmount), required: false
    add_modelized_collection_array %w(CashDiscountVatDetails), required: false
    add_amount_properties %w(ReducedInvoiceVatIncludedAmount), required: false
    add_modelized_properties %w(PaymentOverDueFineDetails), required: false
  end
end
