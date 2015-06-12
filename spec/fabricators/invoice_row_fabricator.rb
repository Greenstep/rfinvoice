Fabricator(:invoice_row, from: ::RFinvoice::InvoiceRow) do
  initialize_with { @_klass.new to_hash }
end
