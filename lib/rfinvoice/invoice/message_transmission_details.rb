require 'rfinvoice/invoice/message_sender_details'
require 'rfinvoice/invoice/message_receiver_details'
require 'rfinvoice/invoice/message_details'

module RFinvoice
  class MessageTransmissionDetails < Model
    add_modelized_properties %w(MessageSenderDetails MessageReceiverDetails MessageDetails), required: false
  end
end
