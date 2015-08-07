module RFinvoice
  module Coercion
    class AccountNumberSchemeCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::AccountNumberSchemeType
      ENUM = %w(IBAN BBAN)

      def coerce(value)
        return '' unless value
        coerce_for_enum(value)
      end
    end
  end
end
