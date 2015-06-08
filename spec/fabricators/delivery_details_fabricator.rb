Fabricator(:delivery_details, from: ::RFinvoice::DeliveryDetails) do
  initialize_with { @_klass.new to_hash }
  waybill_identifier { ::SecureRandom.hex(16) }
  waybill_type_code { ::SecureRandom.hex(16) }
  clearance_identifier { ::SecureRandom.hex(16) }
  delivery_note_identifier { ::SecureRandom.hex(16) }
  deliverer_identifier { ::SecureRandom.hex(16) }
  deliverer_country_name 'Finland'
  mode_of_transport_identifier { ::SecureRandom.hex(16) }
  carrier_name { ::FFaker::Lorem.words(2).join(' ') }
  vessel_name { ::FFaker::Lorem.words(2).join(' ') }
  location_identifier { ::SecureRandom.hex(16) }
  country_of_origin 'Finland'
  country_of_destination_name 'Finland'
  manufacturer_country_name 'Finland'
  manufacturer_order_identifier { ::SecureRandom.hex(16) }
  terminal_address_text { ::FFaker::Lorem.words(10).join(' ') }
  shipment_party_details
  delivery_period_details
  delivery_date
  transport_information_date
end
