Fabricator(:invoice_recipient_code, from: ::RFinvoice::InvoiceRecipientCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
