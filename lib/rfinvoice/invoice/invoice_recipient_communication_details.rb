module RFinvoice
  class InvoiceRecipientCommunicationDetails < Model
    add_string_simple_properties '0_35', %w(InvoiceRecipientPhoneNumberIdentifier), required: false
    add_string_simple_properties '0_70', %w(InvoiceRecipientEmailaddressIdentifier), required: false
  end
end