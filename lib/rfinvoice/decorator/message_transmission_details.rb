module RFinvoice
  module Decorator
    class MessageTransmissionDetails < Base
      property :message_sender_details, decorator: ::RFinvoice::Decorator::MessageSenderDetails
    end
  end
end
