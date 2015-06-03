module RFinvoice
  module Coercion
    class String < ::Virtus::Attribute
      include ::RFinvoice::Coercion::Base
      include ::RFinvoice::Coercion::Limiting
      strict true

      def value_coerced?(value)
        value.instance_of?(::String)
      end
    end
  end
end
