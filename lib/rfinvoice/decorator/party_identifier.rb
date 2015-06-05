module RFinvoice
  module Decorator
    class PartyIdentifier < Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true
        subclass.property :identifier_type, as: 'IdentifierType', attribute: true
      end
    end
  end
end
