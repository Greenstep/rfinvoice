module RFinvoice
  module Coercion
    class PercentageCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Pattern
      PATTERN = /\A[1-9]?[0-9]{1,2}(,[0-9]{1,3})?\z/
      primitive ::RFinvoice::Type::PercentageType
      strict true

      def coerce(value)
        return '' unless value
        coerce_for_pattern(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
