module RFinvoice
  module Decorator
    class Quantity < Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true
        subclass.property :quantity_unit_code, as: 'QuantityUnitCode', attribute: true
      end
    end
  end
end
