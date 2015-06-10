Fabricator(:invoice_total_vat_included_amount, from: ::RFinvoice::InvoiceTotalVatIncludedAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
