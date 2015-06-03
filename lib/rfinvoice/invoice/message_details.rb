module RFinvoice
  class MessageDetails < Model
    attribute :message_identifier, ::RFinvoice::Type::String2_48, required: true
    attribute :message_time_stamp, ::RFinvoice::Type::String2_35, required: true
    attribute :ref_to_message_identifier, ::RFinvoice::Type::String0_48, required: false
    attribute :implementation_code, ::RFinvoice::Type::String0_4, required: false
  end
end
