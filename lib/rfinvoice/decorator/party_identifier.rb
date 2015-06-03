module RFinvoice
  module Decorator
    class PartyIdentifier < Base
      property :value, content: true
      property :identifier_type, as: 'IdentifierType', attribute: true
    end
  end
end
