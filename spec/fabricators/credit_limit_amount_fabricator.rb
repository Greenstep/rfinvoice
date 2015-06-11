Fabricator(:credit_limit_amount, from: ::RFinvoice::CreditLimitAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
