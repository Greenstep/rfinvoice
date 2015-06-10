Fabricator(:invoice_date, from: ::RFinvoice::InvoiceDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
