module RFinvoice
  class Quantity70 < Model
    attribute :value, ::RFinvoice::Type::String0_70, required: true
    attribute :quantity_unit_code, ::RFinvoice::Type::NMToken0_14, required: false
  end
end
