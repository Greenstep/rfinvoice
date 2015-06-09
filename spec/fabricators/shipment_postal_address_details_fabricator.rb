Fabricator(:shipment_postal_address_details, from: ::RFinvoice::ShipmentPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  shipment_street_name { [::FFaker::AddressFI.street_name] }
  shipment_town_name { ::FFaker::AddressFI.city }
  shipment_post_code_identifier { ::FFaker::AddressFI.zip_code }
  shipment_post_office_box_identifier { ::SecureRandom.hex(5) }
  country_name 'Finland'
  country_code 'FI'
end
