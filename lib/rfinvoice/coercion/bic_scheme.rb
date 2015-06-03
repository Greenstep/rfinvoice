module RFinvoice
  module Coercion
    class BicScheme < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::BicScheme
      ENUM = %w(BIC)

      def coerce(value)
        return unless value
        coerce_enum(value)
      end
    end
  end
end
