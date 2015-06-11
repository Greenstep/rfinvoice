Fabricator(:vat_base_amount, from: ::RFinvoice::VatBaseAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
