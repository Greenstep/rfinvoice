module RFinvoice
  module Coercion
    class Identifier < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::IdentifierType
      ENUM = %w(DUNS GLN HETU EDI)

      def coerce(value)
        return '' unless value
        coerce_for_enum(value)
      end
    end
  end
end
