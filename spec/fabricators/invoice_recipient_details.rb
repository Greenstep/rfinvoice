Fabricator(:invoice_recipient_details, from: ::RFinvoice::InvoiceRecipientDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_recipient_address 'Some address'
  invoice_recipient_intermediator_address 'PSPBFIHH'
end
