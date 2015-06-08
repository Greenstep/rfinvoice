Fabricator(:end_date, from: ::RFinvoice::EndDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
