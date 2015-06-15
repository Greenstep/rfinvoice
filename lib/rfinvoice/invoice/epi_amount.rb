module RFinvoice
  class EpiAmount < Model
    attribute :value, ::RFinvoice::Type::EpiMonetaryAmountType, required: true
    attribute :currency, ::RFinvoice::Type::Token3, required: true
  end
end
