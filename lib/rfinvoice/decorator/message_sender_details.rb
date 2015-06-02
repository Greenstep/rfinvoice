module RFinvoice
  module Decorator
    class MessageSenderDetails < Base
      property :from_identifier, as: 'FromIdentifier'
      property :from_intermediator, as: 'FromIntermediator'
    end
  end
end
