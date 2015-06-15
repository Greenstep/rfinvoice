require 'rfinvoice/invoice/sub_row_definition_details'

module RFinvoice
  class SubInvoiceRow < BaseInvoiceRow
    add_string_simple_properties '0_35', %w(SubIdentifier SubRowPositionIdentifier), required: false
    invoice_row_with_prefix('Sub')
  end
end
