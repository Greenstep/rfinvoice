Fabricator(:invoice, from: ::RFinvoice::Invoice) do
  initialize_with { @_klass.new to_hash }
  message_transmission_details
  seller_party_details
  seller_organisation_unit_number { ::SecureRandom.hex(16) }
  seller_site_code { ::SecureRandom.hex(16) }
  seller_contact_person_name { ::FFaker::Name.name }
  seller_contact_person_function { ['title'] }
  seller_contact_person_department { [::FFaker::Name.name] }
  seller_communication_details
  seller_information_details
  invoice_sender_party_details
  invoice_recipient_party_details
  invoice_recipient_organisation_unit_number { ::SecureRandom.hex(16) }
  invoice_recipient_site_code { ::SecureRandom.hex(16) }
  invoice_recipient_contact_person_name { ::FFaker::Name.name }
  invoice_recipient_contact_person_department { [::FFaker::Name.name] }
  invoice_recipient_contact_person_function { ['title'] }
  invoice_recipient_language_code 'EN'
  invoice_recipient_communication_details
  buyer_party_details
  buyer_organisation_unit_number { ::SecureRandom.hex(16) }
  buyer_site_code { ::SecureRandom.hex(16) }
  buyer_contact_person_name { ::FFaker::Name.name }
  buyer_contact_person_function { ['title'] }
  buyer_contact_person_department { [::FFaker::Name.name] }
  buyer_communication_details
  delivery_party_details
  delivery_organisation_unit_number { ::SecureRandom.hex(16) }
  delivery_site_code { ::SecureRandom.hex(16) }
  delivery_contact_person_name { ::FFaker::Name.name }
  delivery_contact_person_function { ['title'] }
  delivery_contact_person_department { [::FFaker::Name.name] }
  delivery_communication_details
  delivery_details
  invoice_details
  invoice_row { [Fabricate(:invoice_row)] }
  epi_details
  lay_out_identifier { ::SecureRandom.hex(16) }
  invoice_segment_identifier { ::SecureRandom.hex(16) }
  original_invoice_format { ::SecureRandom.hex(16) }
  virtual_bank_barcode { ::SecureRandom.uuid }
  invoice_url_name_text { ::FFaker::Lorem.words.join(' ') }
  invoice_url_text { ::FFaker::Internet.http_url }
  storage_url_text { ::FFaker::Internet.http_url }
  control_stamp_text { ::FFaker::Lorem.words.join(' ') }
  acceptance_stamp_text { ::FFaker::Lorem.words.join(' ') }

  # collections
end
