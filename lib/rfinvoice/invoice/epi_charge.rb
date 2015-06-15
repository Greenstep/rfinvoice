module RFinvoice
  class EpiCharge < Model
    attribute :charge_option, ::RFinvoice::Type::ChargeOptionType, required: true, default: 'SHA'
  end
end
