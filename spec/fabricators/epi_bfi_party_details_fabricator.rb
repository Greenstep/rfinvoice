Fabricator(:epi_bfi_party_details, from: ::RFinvoice::EpiBfiPartyDetails) do
  initialize_with { @_klass.new to_hash }
  epi_bfi_identifier { Fabricate(:account_bic) }
  epi_bfi_name { ::FFaker::Name.first_name }
end
