Fabricator(:order_date, from: ::RFinvoice::OrderDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
