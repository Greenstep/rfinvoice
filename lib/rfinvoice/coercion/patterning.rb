module RFinvoice
  module Coercion
    module Patterning
      def coerce_for_pattern(value)
        return unless value
        if self.class.const_defined?(:PATTERN)
          check_value_pattern(value)
        else
          value
        end
      end

      def check_value_pattern(value)
        if (match = self.class::PATTERN.match(value))
          if match[0].length == value.length
            value
          else
            return_nil_or_raise_for_pattern
          end
        else
          return_nil_or_raise_for_pattern
        end
      end

      def return_nil_or_raise_for_pattern
        if ::RFinvoice.configuration.raise_on_broken_value
          fail ::RFinvoice::Error::BrokenValueFormat, "#{self.name} must match #{self.class::PATTERN} pattern"
        else
          ::RFinvoice.logger.info 'Value have broken format'
          nil
        end
      end
    end
  end
end
