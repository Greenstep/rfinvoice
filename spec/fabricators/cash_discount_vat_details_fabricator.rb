Fabricator(:cash_discount_vat_details, from: ::RFinvoice::CashDiscountVatDetails) do
  initialize_with { @_klass.new to_hash }
  cash_discount_vat_percent { %w(0 10 14 24).sample }
  cash_discount_vat_amount { Fabricate(:amount) }
end
