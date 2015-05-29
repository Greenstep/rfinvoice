module RFinvoice
  module Coersion
    class String < ::Virtus::Attribute
      strict true
      primitive ::RFinvoice::Type::Identifier
      ENUM = %w(DUNS GLN HETU EDI)

      def coerce(value)
        return unless value
        if ENUM.include?(value)
          value
        else
          return_nil_or_raise_for
        end
      end

      def return_nil_or_raise_for
        if ::RFinvoice.configuration.raise_on_broken_value
          raise ::RFinvoice::Error::BrokenValueFormat, "must be one of #{self.class::ENUM.join(', ')}"
        else
          ::RFinvoice.logger.info 'Value have broken format'
          nil
        end
      end
    end
  end
end
