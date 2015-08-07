module RFinvoice
  class EpiCharge < Model
    attribute :charge_option, ::RFinvoice::Type::ChargeOptionType, required: false, default: 'SHA'
  end
end
