Fabricator(:control_date, from: ::RFinvoice::ControlDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
