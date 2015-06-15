require 'rfinvoice/invoice/row_definition_details'
require 'rfinvoice/invoice/sub_invoice_row'

module RFinvoice
  class InvoiceRow < BaseInvoiceRow
    add_string_simple_properties '0_35', %w(RowSubIdentifier), required: false
    invoice_row_with_prefix
    add_modelized_collection_array %w(SubInvoiceRow), required: false
  end
end
