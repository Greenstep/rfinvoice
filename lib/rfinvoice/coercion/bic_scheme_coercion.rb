module RFinvoice
  module Coercion
    class BicSchemeCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::BicSchemeType
      ENUM = %w(BIC)

      def coerce(value)
        return 'BIC' unless value
        coerce_for_enum(value)
      end
    end
  end
end
