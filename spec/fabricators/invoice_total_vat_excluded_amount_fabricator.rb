Fabricator(:invoice_total_vat_excluded_amount, from: ::RFinvoice::InvoiceTotalVatExcludedAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
