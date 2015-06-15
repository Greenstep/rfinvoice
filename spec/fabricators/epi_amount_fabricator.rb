Fabricator(:epi_amount, from: ::RFinvoice::EpiAmount) do
  initialize_with { @_klass.new to_hash }
  value { ('%.2f' % (rand(100_000) / 100.0)).sub('.', ',') }
  currency 'EUR'
end
