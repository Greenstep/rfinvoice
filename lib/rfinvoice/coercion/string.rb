module RFinvoice
  module Coercion
    class String < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Limit
      strict true

      def coerce(value)
        return unless value
        coerce_for_limit(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
