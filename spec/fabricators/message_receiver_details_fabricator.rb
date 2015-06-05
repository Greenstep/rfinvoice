Fabricator(:message_receiver_details, from: ::RFinvoice::MessageReceiverDetails) do
  initialize_with { @_klass.new to_hash }
  to_identifier { ::FFaker::Name.name }
  to_intermediator { ::FFaker::Name.name }
end