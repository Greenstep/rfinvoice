module RFinvoice
  class Amount < Model
    attribute :value, ::RFinvoice::Type::MonetaryAmountType, required: false
    attribute :currency, ::RFinvoice::Type::Token3, required: false
  end
end
