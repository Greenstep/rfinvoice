require 'rfinvoice/invoice/invoice_recipient_code'
require 'rfinvoice/invoice/invoice_recipient_postal_address_details'

module RFinvoice
  class InvoiceRecipientPartyDetails < Model
    add_string_simple_properties '0_35', %w(InvoiceRecipientPartyIdentifier InvoiceRecipientOrganisationTaxCode), required: false
    add_complex_properties %w(InvoiceRecipientPostalAddressDetails InvoiceRecipientCode), required: false
    add_simple_collections %w(InvoiceRecipientOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_35], required: true
    add_simple_collections %w(InvoiceRecipientDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
  end
end