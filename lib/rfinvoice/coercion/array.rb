module RFinvoice
  module Coercion
    class Array < ::Virtus::Attribute
      strict true

      def coerce(value)
        return unless value
        if self.class.const_defined?(:LIMIT)
          limit_value(value)
        else
          value
        end
      end

      def value_coerced?(value)
        value.instance_of?(::Array)
      end

      def primitive
        options[:primitive]
      end

      def limit_value(value)
        if self.class::LIMIT.is_a?(::Range)
          limit_value_range(value)
        else
          limit_value_exact(value)
        end
      end

      def limit_value_range(value)
        min = self.class::LIMIT.begin
        max = self.class::LIMIT.end
        if value.length.between?(min, max)
          value
        else
          return_nil_or_raise_for
        end
      end

      def limit_value_exact(value)
        if value.length != self.class::LIMIT
          return_nil_or_raise_for
        else
          value
        end
      end

      def return_nil_or_raise_for
        if ::RFinvoice.configuration.raise_on_broken_value
          fail ::RFinvoice::Error::BrokenValueFormat, "must be Array(#{self.class::LIMIT})"
        else
          ::RFinvoice.logger.info 'Value have broken format'
          nil
        end
      end
    end
  end
end
