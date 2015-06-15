Fabricator(:invoice_recipient_party_details, from: ::RFinvoice::InvoiceRecipientPartyDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_recipient_party_identifier { ::SecureRandom.hex(16) }
  invoice_recipient_organisation_name { [::FFaker::Company.name.split(' ').first] }
  invoice_recipient_department { [::FFaker::Name.name] }
  invoice_recipient_organisation_tax_code { ::SecureRandom.hex(12) }
  invoice_recipient_code
  invoice_recipient_postal_address_details
end
