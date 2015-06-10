module RFinvoice
  module Coercion
    class EpiMonetaryAmount < MonetaryAmount
      primitive ::RFinvoice::Type::EpiMonetaryAmount
      PATTERN = /\A\-?[0-9]{1,15},[0-9]{2}\z/
    end
  end
end
