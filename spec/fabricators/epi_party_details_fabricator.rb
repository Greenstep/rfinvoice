Fabricator(:epi_party_details, from: ::RFinvoice::EpiPartyDetails) do
  initialize_with { @_klass.new to_hash }
  epi_bfi_party_details
  epi_beneficiary_party_details
end
