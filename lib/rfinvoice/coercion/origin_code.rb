module RFinvoice
  module Coercion
    class OriginCode < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Enum
      primitive ::RFinvoice::Type::OriginCode
      strict true
      ENUM = %w(Original Copy Cancel)

      def coerce(value)
        return unless value
        coerce_for_enum(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
