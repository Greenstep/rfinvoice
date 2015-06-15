Fabricator(:seller_party_details, from: ::RFinvoice::SellerPartyDetails) do
  initialize_with { @_klass.new to_hash }
  seller_party_identifier { ::SecureRandom.hex(16) }
  seller_organisation_name { [::FFaker::Name.name] }
  seller_organisation_department { [::FFaker::Name.name] }
  seller_organisation_tax_code { ::SecureRandom.hex(12) }
  seller_code
  seller_postal_address_details
end
