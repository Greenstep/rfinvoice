Fabricator(:epi_identification_details, from: ::RFinvoice::EpiIdentificationDetails) do
  initialize_with { @_klass.new to_hash }
end
