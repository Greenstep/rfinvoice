Fabricator(:start_date, from: ::RFinvoice::StartDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
