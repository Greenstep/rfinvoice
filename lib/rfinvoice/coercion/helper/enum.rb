module RFinvoice
  module Coercion
    module Helper
      module Enum
        def coerce_enum(value)
          if self.class::ENUM.include?(value)
            value
          else
            return_nil_or_raise_for_enum
          end
        end

        def value_coerced?(value)
          value.instance_of?(::String)
        end

        def return_nil_or_raise_for_enum
          if ::RFinvoice.configuration.raise_on_broken_value
            fail ::RFinvoice::Error::BrokenValueFormat,
                 "#{name} must be one of #{self.class::ENUM.join(', ')}"
          else
            ::RFinvoice.logger.info 'Value have broken format'
            nil
          end
        end
      end
    end
  end
end
