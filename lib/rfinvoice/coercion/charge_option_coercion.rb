module RFinvoice
  module Coercion
    class ChargeOptionCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::ChargeOptionType
      ENUM = %w(SHA OUR BEN SLEV)

      def coerce(value)
        return '' unless value
        coerce_for_enum(value)
      end
    end
  end
end
