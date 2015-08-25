Fabricator(:row_delivery_details, from: ::RFinvoice::RowDeliveryDetails) do
  initialize_with { @_klass.new to_hash }
end
