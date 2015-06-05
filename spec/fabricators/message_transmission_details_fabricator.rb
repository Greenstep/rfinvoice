Fabricator(:message_transmission_details, from: ::RFinvoice::MessageTransmissionDetails) do
  initialize_with { @_klass.new to_hash }
  message_sender_details
  message_receiver_details
  message_details
end