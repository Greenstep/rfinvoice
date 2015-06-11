Fabricator(:operation_limit_amount, from: ::RFinvoice::OperationLimitAmount) do
  initialize_with { @_klass.new Fabricate.attributes_for(:amount) }
end
