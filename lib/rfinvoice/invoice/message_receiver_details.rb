module RFinvoice
  class MessageReceiverDetails < Model
    add_string_simple_properties '2_35', %w(ToIdentifier ToIntermediator), required: false
  end
end
