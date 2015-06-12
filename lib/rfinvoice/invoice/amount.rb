module RFinvoice
  class Amount < Model
    attribute :value, ::RFinvoice::Type::MonetaryAmountType, required: true
    attribute :currency, ::RFinvoice::Type::Token3, required: true
  end
end
