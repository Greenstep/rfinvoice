module RFinvoice
  module Coercion
    class UnitAmountCoercion < MonetaryAmountCoercion
      primitive ::RFinvoice::Type::UnitAmountType
    end
  end
end
