Fabricator(:buyer_communication_details, from: ::RFinvoice::BuyerCommunicationDetails) do
  initialize_with { @_klass.new to_hash }
  buyer_phone_number_identifier { ::FFaker::PhoneNumber.phone_number }
  buyer_emailaddress_identifier { ::FFaker::Internet.email }
end
