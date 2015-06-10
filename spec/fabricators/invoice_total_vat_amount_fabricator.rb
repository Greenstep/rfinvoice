Fabricator(:invoice_total_vat_amount, from: ::RFinvoice::InvoiceTotalVatAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
