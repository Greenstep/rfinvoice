module RFinvoice
  module Coercion
    class EpiRemittanceInfoIdentifierPatternCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Limit
      include ::RFinvoice::Coercion::Helper::Pattern
      PATTERN = /\A([0-9]{2,20})|(RF[0-9][0-9][0-9A-Za-z]{1,21})\z/
      LIMIT = 2..25
      primitive ::RFinvoice::Type::EpiRemittanceInfoIdentifierPatternType
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
