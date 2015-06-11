Fabricator(:vat_rate_amount, from: ::RFinvoice::VatRateAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
