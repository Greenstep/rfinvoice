Fabricator(:buyer_party_details, from: ::RFinvoice::BuyerPartyDetails) do
  initialize_with { @_klass.new to_hash }
  buyer_party_identifier { ::SecureRandom.hex(16) }
  buyer_organisation_name { [::FFaker::Name.name] }
  buyer_organisation_department { [::FFaker::Name.name] }
  buyer_organisation_tax_code { ::SecureRandom.hex(12) }
  buyer_code
  buyer_postal_address_details
end
