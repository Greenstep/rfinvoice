Fabricator(:invoice_recipient_communication_details, from: ::RFinvoice::InvoiceRecipientCommunicationDetails) do
  initialize_with { @_klass.new to_hash }
  invoice_recipient_phone_number_identifier { ::FFaker::PhoneNumber.phone_number }
  invoice_recipient_emailaddress_identifier { ::FFaker::Internet.email }
end
