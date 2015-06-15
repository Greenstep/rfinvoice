Fabricator(:epi_beneficiary_party_details, from: ::RFinvoice::EpiBeneficiaryPartyDetails) do
  initialize_with { @_klass.new to_hash }
  epi_account_id { Fabricate(:account_id) }
  epi_bei { ::SecureRandom.hex(5) }
  epi_name_address_details { ::FFaker::Address.street_address }
end
