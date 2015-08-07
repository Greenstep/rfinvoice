module RFinvoice
  module Coercion
    class OriginCodeCoercion < ::Virtus::Attribute
      include ::RFinvoice::Coercion::BaseCoercion
      include ::RFinvoice::Coercion::Helper::Enum
      primitive ::RFinvoice::Type::OriginCodeType
      strict true
      ENUM = %w(Original Copy Cancel)

      def coerce(value)
        return '' unless value
        value = 'Original' if value == 'Origin' # compatibility with 1.0
        coerce_for_enum(value)
      end

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
