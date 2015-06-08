Fabricator(:transport_information_date, from: ::RFinvoice::TransportInformationDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
