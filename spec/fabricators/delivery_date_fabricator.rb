Fabricator(:delivery_date, from: ::RFinvoice::DeliveryDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
