Fabricator(:buyer_postal_address_details, from: ::RFinvoice::BuyerPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  buyer_street_name { [::FFaker::AddressFI.street_name] }
  buyer_town_name { ::FFaker::AddressFI.city }
  buyer_post_code_identifier { ::FFaker::AddressFI.zip_code }
  buyer_post_office_box_identifier { ::SecureRandom.hex(5) }
  country_name 'Finland'
  country_code 'FI'
end
