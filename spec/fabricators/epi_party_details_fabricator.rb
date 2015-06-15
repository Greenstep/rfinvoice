Fabricator(:epi_party_details, from: ::RFinvoice::EpiPartyDetails) do
  initialize_with { @_klass.new to_hash }
end
