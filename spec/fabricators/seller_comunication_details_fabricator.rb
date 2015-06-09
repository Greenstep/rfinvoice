Fabricator(:seller_communication_details, from: ::RFinvoice::SellerCommunicationDetails) do
  initialize_with { @_klass.new to_hash }
  seller_phone_number_identifier { ::FFaker::PhoneNumber.phone_number }
  seller_emailaddress_identifier { ::FFaker::Internet.email }
end
