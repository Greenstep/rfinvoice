module RFinvoice
  module Decorator
    class UnitAmount < Amount
      property :unit_price_unit_code, as: 'UnitPriceUnitCode', attribute: true
    end
  end
end
