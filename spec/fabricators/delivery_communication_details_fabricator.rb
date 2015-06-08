Fabricator(:delivery_communication_details, from: ::RFinvoice::DeliveryCommunicationDetails) do
  initialize_with { @_klass.new to_hash }
  delivery_phone_number_identifier { ::FFaker::PhoneNumber.phone_number }
  delivery_emailaddress_identifier { ::FFaker::Internet.email }
end
