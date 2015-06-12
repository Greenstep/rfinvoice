Fabricator(:invoice_row, from: ::RFinvoice::InvoiceRow) do
  initialize_with { @_klass.new to_hash }
  article_name { ::FFaker::Lorem.words(3).join(' ') }
  original_invoice_number { ::SecureRandom.hex(10) }
  row_vat_code { ::SecureRandom.hex(5) }
  row_short_proposed_account_identifier { ::SecureRandom.hex(2) }
  row_normal_proposed_account_identifier { ::SecureRandom.hex(2) }
  row_orderer_name { ::FFaker::Name.name }
  row_sales_person_name { ::FFaker::Name.name }
  row_sub_identifier { ::SecureRandom.hex(16) }
  article_identifier { ::SecureRandom.hex(16) }
  article_group_identifier { ::SecureRandom.hex(16) }
  buyer_article_identifier { ::SecureRandom.hex(16) }
  ean_code { ::SecureRandom.hex(16) }
  row_registration_number_identifier { ::SecureRandom.hex(16) }
  serial_number_identifier { ::SecureRandom.hex(16) }
  row_action_code { ::SecureRandom.hex(16) }
  row_identifier { ::SecureRandom.hex(16) }
  row_position_identifier { ::SecureRandom.hex(16) }
  row_order_position_identifier { ::SecureRandom.hex(16) }
  row_order_confirmation_identifier { ::SecureRandom.hex(16) }
  row_delivery_identifier { ::SecureRandom.hex(16) }
  row_quotation_identifier { ::SecureRandom.hex(16) }
  row_agreement_identifier { ::SecureRandom.hex(16) }
  row_request_of_quotation_identifier { ::SecureRandom.hex(16) }
  row_price_list_identifier { ::SecureRandom.hex(16) }
  row_project_reference_identifier { ::SecureRandom.hex(16) }
  row_proposed_account_text { ::FFaker::Lorem.words(2).join(' ') }
  row_account_dimension_text { ::FFaker::Lorem.words(2).join(' ') }
  row_seller_account_text { ::FFaker::Lorem.words(2).join(' ') }
  row_discount_type_code { ::FFaker::Lorem.words(2).join(' ') }
  row_discount_type_text { ::FFaker::Lorem.words(2).join(' ') }
  article_info_url_text { ::FFaker::Internet.http_url }
  row_identifier_url_text { ::FFaker::Internet.http_url }
  row_delivery_identifier_url_text { ::FFaker::Internet.http_url }
  row_quotation_identifier_url_text { ::FFaker::Internet.http_url }
  row_agreement_identifier_url_text { ::FFaker::Internet.http_url }
  row_request_of_quotation_identifier_url_text { ::FFaker::Internet.http_url }
  row_price_list_identifier_url_text { ::FFaker::Internet.http_url }
  start_date { Fabricate(:date) }
  end_date { Fabricate(:date) }
  row_identifier_date { Fabricate(:date) }
  row_order_confirmation_date { Fabricate(:date) }
  row_delivery_date { Fabricate(:date) }
  row_average_price_amount { Fabricate(:amount) }
  row_discount_amount { Fabricate(:amount) }
  row_vat_amount { Fabricate(:amount) }
  row_vat_excluded_amount { Fabricate(:amount) }
  row_amount { Fabricate(:amount) }
  unit_price_amount { Fabricate(:unit_amount) }
  unit_price_vat_included_amount { Fabricate(:unit_amount) }
  row_discount_percent { %w(0 10 14 24).sample }
  row_vat_rate_percent { %w(0 10 14 24).sample }
  row_free_text { ::FFaker::Lorem.words }
  offered_quantity { Fabricate(:quantity14) }
  delivered_quantity { Fabricate(:quantity14) }
  ordered_quantity { Fabricate(:quantity14) }
  confirmed_quantity { Fabricate(:quantity14) }
  post_delivered_quantity { Fabricate(:quantity14) }
  invoiced_quantity { Fabricate(:quantity14) }
  credit_requested_quantity { Fabricate(:quantity14) }
  returned_quantity { Fabricate(:quantity14) }
  unit_price_base_quantity { Fabricate(:quantity14) }
end
