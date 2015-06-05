module RFinvoice
  class MessageSenderDetails < Model
    add_string_simple_properties '2_35', %w(FromIdentifier FromIntermediator), required: true
  end
end
