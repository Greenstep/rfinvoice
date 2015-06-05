require 'rfinvoice/invoice/message_sender_details'
require 'rfinvoice/invoice/message_receiver_details'
require 'rfinvoice/invoice/message_details'

module RFinvoice
  class MessageTransmissionDetails < Model
    add_complex_properties %w(MessageSenderDetails MessageReceiverDetails MessageDetails), required: true
  end
end
