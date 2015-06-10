module RFinvoice
  module Coercion
    class Version < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Helper::Enum
      strict true
      primitive ::RFinvoice::Type::Version
      ENUM = %w(1.0 1.1 1.2 1.3 2.0 2.01)

      def coerce(value)
        return unless value
        coerce_for_enum(value)
      end
    end
  end
end
