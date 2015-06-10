Fabricator(:invoice_total_roundoff_amount, from: ::RFinvoice::InvoiceTotalRoundoffAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
