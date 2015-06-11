Fabricator(:other_currency_amount_vat_included_amount, from: ::RFinvoice::OtherCurrencyAmountVatIncludedAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
