module RFinvoice
  module Coercion
    class NMToken < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Limiting
      include ::RFinvoice::Coercion::Patterning
      PATTERN = /\A[\-\.0-9:A-Z_a-z\u00B7\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u037D\u037F-\u1FFF\u200C-\u200D\u203F\u2040\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD]*\z/
      strict true

      def coerce(value)
        return unless value
        value = coerce_for_limit(value)
        value = coerce_for_pattern(value)
        value
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
