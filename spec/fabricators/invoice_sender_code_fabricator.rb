Fabricator(:invoice_sender_code, from: ::RFinvoice::InvoiceSenderCode) do
  initialize_with { @_klass.new Fabricate.attributes_for(:party_identifier) }
end
