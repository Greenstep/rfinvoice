Fabricator(:payment_terms_details, from: ::RFinvoice::PaymentTermsDetails) do
  initialize_with { @_klass.new to_hash }
  payment_terms_free_text { ::FFaker::Lorem.words(2) }
  cash_discount_percent { %w(0 10 20).sample }
  cash_discount_base_amount { Fabricate(:amount) }
  cash_discount_amount { Fabricate(:amount) }
  cash_discount_excluding_vat_amount { Fabricate(:amount) }
  reduced_invoice_vat_included_amount { Fabricate(:amount) }
  payment_over_due_fine_details
  cash_discount_vat_details { [Fabricate(:cash_discount_vat_details)] }
end
