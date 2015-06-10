module RFinvoice
  module Coercion
    class Token < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::NormalizeString
      include ::RFinvoice::Coercion::Helper::Limit
      strict true

      def coerce(value)
        return unless value
        value = normalize_string(value)
        coerce_for_limit(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
