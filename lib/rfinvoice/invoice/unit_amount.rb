module RFinvoice
  class UnitAmount < Model
    attribute :value, ::RFinvoice::Type::UnitAmountType, required: false
    attribute :currency, ::RFinvoice::Type::Token3, required: false
    attribute :unit_price_unit_code, ::RFinvoice::Type::String0_14, required: false
  end
end
