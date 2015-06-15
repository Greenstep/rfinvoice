Fabricator(:invoice_sender_party_details, from: ::RFinvoice::InvoiceSenderPartyDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_sender_organisation_name { [::FFaker::Name.name] }
  invoice_sender_party_identifier { ::SecureRandom.hex(16) }
  invoice_sender_organisation_tax_code { ::SecureRandom.hex(5) }
  invoice_sender_code
end
