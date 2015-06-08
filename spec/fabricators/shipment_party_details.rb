Fabricator(:shipment_party_details, from: ::RFinvoice::ShipmentPartyDetails) do
  initialize_with { @_klass.new to_hash }
  shipment_party_identifier { ::SecureRandom.hex(16) }
  shipment_organisation_name { [::FFaker::Company.name] }
  shipment_organisation_department { [::FFaker::Company.name] }
  shipment_organisation_tax_code { ::SecureRandom.hex(12) }
  shipment_code
  shipment_postal_address_details
  shipment_site_code { ::SecureRandom.hex(16) }
end
