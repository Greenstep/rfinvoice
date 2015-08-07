module RFinvoice
  module Coercion
    class EpiRemittanceInfoIdentifierSchemeCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      primitive ::RFinvoice::Type::EpiRemittanceInfoIdentifierSchemeType
      ENUM = %w(SPY ISO)
      strict true

      def coerce(value)
        return '' unless value
        coerce_for_enum(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
