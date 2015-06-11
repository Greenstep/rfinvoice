Fabricator(:monthly_amount, from: ::RFinvoice::MonthlyAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
