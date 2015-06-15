module RFinvoice
  module Decorator
    class EpiRemittanceInfoIdentifier < Representable::Decorator
      include ::Representable::XML
      property :value, content: true
      property :scheme, as: 'IdentificationSchemeName', attribute: true
    end
  end
end
