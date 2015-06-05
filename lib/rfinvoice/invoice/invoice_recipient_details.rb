module RFinvoice
  class InvoiceRecipientDetails < Model
    add_string_simple_properties '1_35', %w(InvoiceRecipientAddress), required: true
    add_nmtoken_simple_properties '8_11', %w(InvoiceRecipientIntermediatorAddress), required: true
  end
end