module RFinvoice
  class MessageReceiverDetails < Model
    attribute :to_identifier, ::RFinvoice::Type::String2_35, require: true
    attribute :to_intermediator, ::RFinvoice::Type::String2_35, require: true
  end
end
