Fabricator(:invoice_details, from: ::RFinvoice::InvoiceDetails) do |i|
  i.initialize_with { @_klass.new to_hash }
  i.invoice_type_code
  i.invoice_type_text { ::FFaker::Lorem.words.join(' ') }
  i.origin_code { %w(Original Copy Cancel).sample }
  i.origin_text { ::FFaker::Lorem.word }
  i.invoice_number { sequence(:invoice_number).to_s }
  i.original_invoice_number { sequence(:original_invoice_number).to_s }
  i.invoice_date
  i.invoicing_period_start_date
  i.invoicing_period_end_date
  i.seller_reference_identifier { ::SecureRandom.hex(16) }
  i.buyers_seller_identifier { ::SecureRandom.hex(16) }
  i.sellers_buyer_identifier { ::SecureRandom.hex(16) }
  i.order_identifier { ::SecureRandom.hex(16) }
  i.seller_reference_identifier_url_text { ::FFaker::Lorem.words.join(' ') }
  i.order_identifier_url_text { ::FFaker::Lorem.words.join(' ') }
  i.order_date
  i.orderer_name { ::FFaker::Name.name }
  i.sales_person_name { ::FFaker::Name.name }
  i.order_confirmation_identifier { ::SecureRandom.hex(16) }
  i.order_confirmation_date
  i.agreement_identifier { ::SecureRandom.hex(16) }
  i.agreement_identifier_url_text { ::FFaker::Internet.http_url }
  i.agreement_type_text { ::FFaker::Lorem.word }
  i.agreement_type_code { ::SecureRandom.hex(16) }
  i.agreement_date
  i.notification_date
  i.control_date
  i.notification_identifier { ::SecureRandom.hex(16) }
  i.registration_number_identifier { ::SecureRandom.hex(16) }
  i.controller_identifier { ::SecureRandom.hex(16) }
  i.controller_name { ::FFaker::Name.name }
  i.buyer_reference_identifier { ::SecureRandom.hex(16) }
  i.project_reference_identifier { ::SecureRandom.hex(16) }
  i.definition_details
end
