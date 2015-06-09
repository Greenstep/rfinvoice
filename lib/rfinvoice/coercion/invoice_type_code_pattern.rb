module RFinvoice
  module Coercion
    class InvoiceTypeCodePattern < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Limit
      include ::RFinvoice::Coercion::Helper::Pattern
      PATTERN = /\A(REQ|QUO|ORD|ORC|INV|DEV|TES|INF|PRI|DEN|SEI)[0-9]{2}\z/
      LIMIT = 5
      primitive ::RFinvoice::Type::InvoiceTypeCodePattern
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
