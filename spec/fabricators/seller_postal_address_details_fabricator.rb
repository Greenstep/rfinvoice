Fabricator(:seller_postal_address_details, from: ::RFinvoice::SellerPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  seller_street_name { [::FFaker::AddressFI.street_name] }
  seller_town_name { ::FFaker::AddressFI.city }
  seller_post_code_identifier { ::FFaker::AddressFI.zip_code }
  seller_post_office_box_identifier { ::SecureRandom.hex(5) }
  country_name 'Finland'
  country_code 'FI'
end
