Fabricator(:other_currency_amount_vat_excluded_amount, from: ::RFinvoice::OtherCurrencyAmountVatExcludedAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
