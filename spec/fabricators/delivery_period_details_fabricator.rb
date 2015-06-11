Fabricator(:delivery_period_details, from: ::RFinvoice::DeliveryPeriodDetails) do
  initialize_with { @_klass.new to_hash }
  start_date { Fabricate(:date) }
  end_date { Fabricate(:date) }
end
