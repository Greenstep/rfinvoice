module RFinvoice
  module Coercion
    class MonetaryAmountCoercion < AmountCoercion
      primitive ::RFinvoice::Type::MonetaryAmountType
      PATTERN = /\A\-?[0-9]{1,15}(,[0-9]{2,5})?\z/
    end
  end
end
