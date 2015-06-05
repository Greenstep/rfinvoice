Fabricator(:message_sender_details, from: ::RFinvoice::MessageSenderDetails) do
  initialize_with { @_klass.new to_hash }
  from_identifier { ::FFaker::Name.name }
  from_intermediator { ::FFaker::Name.name }
end