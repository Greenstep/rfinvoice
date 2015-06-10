module RFinvoice
  module Coercion
    class AmountCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Pattern
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
