module RFinvoice
  module Coercion
    module Helper
      module NormalizeString
        def normalize_string(value)
          value.gsub(/[\t\r\n]/, '')
        end
      end
    end
  end
end
