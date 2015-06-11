module RFinvoice
  module Decorator
    class Amount < ::Representable::Decorator
      include ::Representable::XML
      property :value, content: true
      property :currency, as: 'AmountCurrencyIdentifier', attribute: true
    end
  end
end
