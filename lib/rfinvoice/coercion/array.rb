module RFinvoice
  module Coercion
    class Array < ::Virtus::Attribute::Collection
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Limiting
      strict true

      def value_coerced?(value)
        value.is_a?(::Array)
      end
    end
  end
end
