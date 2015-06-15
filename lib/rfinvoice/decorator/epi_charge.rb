module RFinvoice
  module Decorator
    class EpiCharge < Representable::Decorator
      include ::Representable::XML
      self.representation_wrap = 'EpiCharge'
      property :charge_option, as: 'ChargeOption', attribute: true
    end
  end
end
