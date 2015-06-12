module RFinvoice
  module Coercion
    class EpiMonetaryAmount < MonetaryAmountCoercion
      primitive ::RFinvoice::Type::EpiMonetaryAmountType
      PATTERN = /\A\-?[0-9]{1,15},[0-9]{2}\z/
    end
  end
end
