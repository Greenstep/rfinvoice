require 'rfinvoice/invoice/invoice_sender_code'

module RFinvoice
  class InvoiceSenderPartyDetails < Model
    add_string_simple_properties '0_35', %w(InvoiceSenderPartyIdentifier), required: false
    add_nmtoken_simple_properties '0_35', %w(InvoiceSenderOrganisationTaxCode), required: false
    add_simple_collections %w(InvoiceSenderOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_35], required: true
    add_complex_properties %w(InvoiceSenderCode), required: false
  end
end
