module RFinvoice
  class InvoiceRecipientPostalAddressDetails < Model
    add_simple_collections %w(InvoiceRecipientStreetName), ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: true
    add_string_simple_properties '2_35', %w(InvoiceRecipientTownName InvoiceRecipientPostCodeIdentifier), required: true
    add_nmtoken_simple_properties '2', %w(CountryCode), required: false
    add_string_simple_properties '0_35', %w(CountryName InvoiceRecipientPostOfficeBoxIdentifier), required: false
  end
end
