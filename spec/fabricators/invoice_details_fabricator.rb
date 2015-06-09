Fabricator(:invoice_details, from: ::RFinvoice::InvoiceDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_type_code
  invoice_type_text { ::FFaker::Lorem.words.join(' ') }
end
