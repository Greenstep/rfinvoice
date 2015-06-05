Fabricator(:seller_official_postal_address_details, from: ::RFinvoice::SellerOfficialPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  seller_official_street_name { ::FFaker::AddressFI.street_name }
  seller_official_town_name { ::FFaker::AddressFI.city }
  seller_official_post_code_identifier { ::FFaker::AddressFI.zip_code }
  country_name 'Finland'
end
