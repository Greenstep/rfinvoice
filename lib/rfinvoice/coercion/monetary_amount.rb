module RFinvoice
  module Coercion
    class MonetaryAmount < AmountCoercion
      primitive ::RFinvoice::Type::MonetaryAmount
      PATTERN = /\A\-?[0-9]{1,15}(,[0-9]{2,5})?\z/
    end
  end
end
