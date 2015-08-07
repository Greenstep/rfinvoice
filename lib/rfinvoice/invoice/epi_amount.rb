module RFinvoice
  class EpiAmount < Model
    attribute :value, ::RFinvoice::Type::EpiMonetaryAmountType, required: false
    attribute :currency, ::RFinvoice::Type::Token3, required: false
  end
end
