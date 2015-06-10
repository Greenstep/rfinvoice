Fabricator(:order_confirmation_date, from: ::RFinvoice::OrderConfirmationDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
