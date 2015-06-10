module RFinvoice
  module Coercion
    class NMToken < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::NormalizeString
      include ::RFinvoice::Coercion::Helper::Limit
      include ::RFinvoice::Coercion::Helper::Pattern
      # XML NameChar pattern http://www.w3.org/TR/2000/WD-xml-2e-20000814#NT-NameChar
      # Regexp from http://www.regular-expressions.info/shorthand.html
      PATTERN = /
        \A                # Start of line
        [
          \-\.:_          # Supported special symbols
          0-9             # Numeric character
          A-Za-z          # Alphabetic character
          \u00B7          # Merged Unicode ranges. Possible what they are not includes all.
          \u00C0-\u00D6
          \u00D8-\u00F6
          \u00F8-\u037D
          \u037F-\u1FFF
          \u200C-\u200D
          \u203F
          \u2040
          \u2070-\u218F
          \u2C00-\u2FEF
          \u3001-\uD7FF
          \uF900-\uFDCF
          \uFDF0-\uFFFD
        ]*
        \z                # End of line
      /x
      strict true

      def coerce(value)
        return unless value
        value = normalize_string(value)
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
