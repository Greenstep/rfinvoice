module RFinvoice
  class MessageDetails < Model
    add_string_simple_properties '2_48', %w(MessageIdentifier), required: true
    add_string_simple_properties '2_35', %w(MessageTimeStamp), required: true
    add_string_simple_properties '0_48', %w(RefToMessageIdentifier), required: false
    add_string_simple_properties '0_4', %w(ImplementationCode), required: false
  end
end
