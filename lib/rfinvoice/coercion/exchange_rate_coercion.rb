module RFinvoice
  module Coercion
    class EchangeRateCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Pattern
      PATTERN = /\A[0-9]{1,15}(,[0-9]{1,6})?\z/
      primitive ::RFinvoice::Type::ExchangeRate
      strict true

      def coerce(value)
        return unless value
        coerce_for_pattern(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
