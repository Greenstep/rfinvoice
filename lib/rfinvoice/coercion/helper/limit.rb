module RFinvoice
  module Coercion
    module Helper
      module Limit
        def coerce_for_limit(value)
          if self.class.const_defined?(:LIMIT)
            limit_value(value)
          else
            value
          end
        end

        def limit_value(value)
          if self.class::LIMIT.is_a?(::Range)
            limit_value_range(value)
          else
            limit_value_exact(value)
          end
        end

        def limit_value_range(value)
          limit = self.class::LIMIT
          if value.length.between?(limit.begin, limit.end)
            value
          else
            return_nil_or_raise_for_limit(value)
          end
        end

        def limit_value_exact(value)
          if value.length != self.class::LIMIT
            return_nil_or_raise_for_limit(value)
          else
            value
          end
        end

        def return_nil_or_raise_for_limit(value)
          if ::RFinvoice.configuration.raise_on_broken_value
            fail ::RFinvoice::Error::BrokenValueFormat, "#{name} must be #{primitive}(#{self.class::LIMIT}) but got #{value.length}"
          else
            ::RFinvoice.logger.info 'Value have broken format'
            nil
          end
        end
      end
    end
  end
end
