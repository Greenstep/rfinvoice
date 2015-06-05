Fabricator(:message_details, from: ::RFinvoice::MessageDetails) do
  initialize_with { @_klass.new to_hash }
  message_identifier { ::SecureRandom.uuid }
  message_time_stamp { ::Time.now.strftime('%Y-%m-%d %H:%M') }
  ref_to_message_identifier { ::FFaker::Lorem.word }
  implementation_code { sequence(:implementation_code).to_s }
end