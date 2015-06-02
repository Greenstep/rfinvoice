module RFinvoice
  module Decorator
    class Base < ::Representable::Decorator
      include ::Representable::XML
      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
      end
    end
  end
end
