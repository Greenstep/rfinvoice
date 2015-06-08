Fabricator(:invoice_recipient_postal_address_details, from: ::RFinvoice::InvoiceRecipientPostalAddressDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_recipient_street_name { [::FFaker::AddressFI.street_name] }
  invoice_recipient_street_name { [sequence(:invoice_recipient_street_number)] }
  invoice_recipient_town_name { ::FFaker::AddressFI.city }
  invoice_recipient_post_code_identifier { ::FFaker::AddressFI.zip_code }
  country_name 'Finland'
  country_code 'FI'
  invoice_recipient_post_office_box_identifier { ::SecureRandom.hex(5) }
end
