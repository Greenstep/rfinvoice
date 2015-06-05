Fabricator(:seller_information_details, from: ::RFinvoice::SellerInformationDetails) do
  initialize_with { @_klass.new to_hash }
  seller_home_town_name { ::FFaker::AddressFI.city }
  seller_vat_registration_text { ::FFaker::Lorem.word }
  seller_tax_registration_text { ::FFaker::Lorem.word }
  seller_phone_number { ::FFaker::PhoneNumber.phone_number }
  seller_fax_number { ::FFaker::PhoneNumber.phone_number }
  seller_common_emailaddress_identifier { ::FFaker::Internet.email }
  seller_webaddress_identifier { ::FFaker::Internet.uri('http') }
  seller_free_text { ::FFaker::Lorem.words(5).join(' ') }
  seller_official_postal_address_details
  seller_vat_registration_date(fabricator: :date)
  seller_account_details { Fabricate.times(1, :seller_account_details) }
  invoice_recipient_details { Fabricate.times(1, :invoice_recipient_details) }
end
