module RFinvoice
  class MessageSenderDetails < Model
    attribute :from_identifier, ::RFinvoice::Type::String2_35, require: true
    attribute :from_intermediator, ::RFinvoice::Type::String2_35, require: true
  end
end