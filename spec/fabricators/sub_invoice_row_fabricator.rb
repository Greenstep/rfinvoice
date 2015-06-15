Fabricator(:sub_invoice_row, from: ::RFinvoice::SubInvoiceRow) do
  initialize_with { @_klass.new to_hash }
  sub_article_name { ::FFaker::Lorem.words(3).join(' ') }
  sub_original_invoice_number { ::SecureRandom.hex(10) }
  sub_row_vat_code { ::SecureRandom.hex(5) }
  sub_row_short_proposed_account_identifier { ::SecureRandom.hex(2) }
  sub_row_normal_proposed_account_identifier { ::SecureRandom.hex(2) }
  sub_row_orderer_name { ::FFaker::Name.name }
  sub_row_sales_person_name { ::FFaker::Name.name }
  sub_identifier { ::SecureRandom.hex(16) }
  sub_article_identifier { ::SecureRandom.hex(16) }
  sub_article_group_identifier { ::SecureRandom.hex(16) }
  sub_buyer_article_identifier { ::SecureRandom.hex(16) }
  sub_ean_code { ::SecureRandom.hex(16) }
  sub_row_registration_number_identifier { ::SecureRandom.hex(16) }
  sub_serial_number_identifier { ::SecureRandom.hex(16) }
  sub_row_action_code { ::SecureRandom.hex(16) }
  sub_row_identifier { ::SecureRandom.hex(16) }
  sub_row_position_identifier { ::SecureRandom.hex(16) }
  sub_row_order_confirmation_identifier { ::SecureRandom.hex(16) }
  sub_row_delivery_identifier { ::SecureRandom.hex(16) }
  sub_row_quotation_identifier { ::SecureRandom.hex(16) }
  sub_row_agreement_identifier { ::SecureRandom.hex(16) }
  sub_row_request_of_quotation_identifier { ::SecureRandom.hex(16) }
  sub_row_price_list_identifier { ::SecureRandom.hex(16) }
  sub_row_project_reference_identifier { ::SecureRandom.hex(16) }
  sub_row_proposed_account_text { ::FFaker::Lorem.words(2).join(' ') }
  sub_row_account_dimension_text { ::FFaker::Lorem.words(2).join(' ') }
  sub_row_seller_account_text { ::FFaker::Lorem.words(2).join(' ') }
  sub_row_discount_type_code { ::FFaker::Lorem.words(2).join(' ') }
  sub_row_discount_type_text { ::FFaker::Lorem.words(2).join(' ') }
  sub_article_info_url_text { ::FFaker::Internet.http_url }
  sub_row_identifier_url_text { ::FFaker::Internet.http_url }
  sub_row_delivery_identifier_url_text { ::FFaker::Internet.http_url }
  sub_row_quotation_identifier_url_text { ::FFaker::Internet.http_url }
  sub_row_agreement_identifier_url_text { ::FFaker::Internet.http_url }
  sub_row_request_of_quotation_identifier_url_text { ::FFaker::Internet.http_url }
  sub_row_price_list_identifier_url_text { ::FFaker::Internet.http_url }
  sub_start_date { Fabricate(:date) }
  sub_end_date { Fabricate(:date) }
  sub_row_identifier_date { Fabricate(:date) }
  sub_row_order_confirmation_date { Fabricate(:date) }
  sub_row_delivery_date { Fabricate(:date) }
  sub_row_average_price_amount { Fabricate(:amount) }
  sub_row_discount_amount { Fabricate(:amount) }
  sub_row_vat_amount { Fabricate(:amount) }
  sub_row_vat_excluded_amount { Fabricate(:amount) }
  sub_row_amount { Fabricate(:amount) }
  sub_unit_price_amount { Fabricate(:unit_amount) }
  sub_unit_price_vat_included_amount { Fabricate(:unit_amount) }
  sub_row_discount_percent { %w(0 10 14 24).sample }
  sub_row_vat_rate_percent { %w(0 10 14 24).sample }
  sub_row_free_text { ::FFaker::Lorem.words }
  sub_offered_quantity { [Fabricate(:quantity14)] }
  sub_delivered_quantity { [Fabricate(:quantity14)] }
  sub_ordered_quantity { Fabricate(:quantity14) }
  sub_confirmed_quantity { Fabricate(:quantity14) }
  sub_post_delivered_quantity { Fabricate(:quantity14) }
  sub_invoiced_quantity { Fabricate(:quantity14) }
  sub_credit_requested_quantity { Fabricate(:quantity14) }
  sub_returned_quantity { Fabricate(:quantity14) }
  sub_unit_price_base_quantity { Fabricate(:quantity14) }
  sub_row_definition_details { [Fabricate(:sub_row_definition_details)] }
end
