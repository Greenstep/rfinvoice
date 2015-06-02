module RFinvoice
  module Decorator
    class SellerPartyDetails < Base
      ::RFinvoice::SellerPartyDetails::STRINGS_0_35.each do |key|
        property key.underscore.to_sym, as: key.to_sym
      end

      ::RFinvoice::SellerPartyDetails::STRINGS_0_512.each do |key|
        property key.underscore.to_sym, as: key.to_sym
      end
    end
  end
end