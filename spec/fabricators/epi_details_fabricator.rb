Fabricator(:epi_details, from: ::RFinvoice::EpiDetails) do
  initialize_with { @_klass.new to_hash }
  epi_party_details
  epi_identification_details
  epi_payment_instruction_details
end
