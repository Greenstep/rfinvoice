Fabricator(:amount, from: ::RFinvoice::Amount) do
  initialize_with { @_klass.new to_hash }
  value { ('%.5f' % (rand(100_000) / 100.0)).sub('.', ',') }
  currency 'EUR'
end
