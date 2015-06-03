module RFinvoice
  module Coercion
    class AccountNumberScheme < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::AccountNumberScheme
      ENUM = %w(IBAN BBAN)

      def coerce(value)
        return unless value
        coerce_enum(value)
      end
    end
  end
end
