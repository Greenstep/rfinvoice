require 'rfinvoice/invoice/message_sender_details'
require 'rfinvoice/invoice/message_receiver_details'
require 'rfinvoice/invoice/message_details'

module RFinvoice
  class MessageTransmissionDetails < Model
    attribute :message_sender_details, ::RFinvoice::MessageSenderDetails, require: true
    attribute :message_receiver_details, ::RFinvoice::MessageReceiverDetails, require: true
    attribute :message_details, ::RFinvoice::MessageDetails, require: true
  end
end
