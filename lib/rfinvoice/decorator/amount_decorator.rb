module RFinvoice
  module Decorator
    class AmountDecorator < ::Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true
        subclass.property :currency, as: 'AmountCurrencyIdentifier', attribute: true
      end
    end
  end
end
