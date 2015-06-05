Fabricator(:date, from: ::RFinvoice::Date) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
