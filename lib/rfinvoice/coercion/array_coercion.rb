module RFinvoice
  module Coercion
    class ArrayCoercion < ::Virtus::Attribute::Collection
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Limit
      strict true

      def coerce(value)
        return unless value
        coerce_for_limit(value)
      end

      def value_coerced?(value)
        value.is_a?(::Array)
      end
    end
  end
end
