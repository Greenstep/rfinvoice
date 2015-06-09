Fabricator(:invoice_details, from: ::RFinvoice::InvoiceDetails) do
  initialize_with { @_klass.new to_hash }
end
