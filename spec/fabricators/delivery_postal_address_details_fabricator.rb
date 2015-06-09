Fabricator(:delivery_postal_address_details, from: ::RFinvoice::DeliveryPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  delivery_street_name { [::FFaker::AddressFI.street_name] }
  delivery_town_name { ::FFaker::AddressFI.city }
  delivery_post_code_identifier { ::FFaker::AddressFI.zip_code }
  delivery_postoffice_box_identifier { ::SecureRandom.hex(5) }
  country_name 'Finland'
  country_code 'FI'
end
