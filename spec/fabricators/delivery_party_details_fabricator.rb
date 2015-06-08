Fabricator(:delivery_party_details, from: ::RFinvoice::DeliveryPartyDetails) do
  initialize_with { @_klass.new to_hash }
  delivery_party_identifier { ::SecureRandom.hex(16) }
  delivery_organisation_name { [::FFaker::Company.name] }
  delivery_organisation_department { [::FFaker::Company.name] }
  delivery_organisation_tax_code { ::SecureRandom.hex(12) }
  delivery_code
  delivery_postal_address_details
end
