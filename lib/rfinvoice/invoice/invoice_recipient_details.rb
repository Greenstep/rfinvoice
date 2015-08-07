module RFinvoice
  class InvoiceRecipientDetails < Model
    add_string_simple_properties '1_35', %w(InvoiceRecipientAddress), required: false
    add_nmtoken_simple_properties '8_11', %w(InvoiceRecipientIntermediatorAddress), required: false
  end
end
