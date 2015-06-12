Fabricator(:payment_over_due_fine_details, from: ::RFinvoice::PaymentOverDueFineDetails) do
  initialize_with { @_klass.new to_hash }
  payment_over_due_fixed_amount { Fabricate(:amount) }
  payment_over_due_fine_percent { %w(0 10 14 20).sample }
  payment_over_due_fine_free_text { [::FFaker::Lorem.word] }
end
