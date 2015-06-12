Fabricator(:unit_amount, from: ::RFinvoice::UnitAmount) do
  initialize_with { @_klass.new to_hash }
  value { ('%.3f' % (rand(100_000) / 100.0)).sub('.', ',') }
  currency 'EUR'
  unit_price_unit_code 'kwh/kk'
end
