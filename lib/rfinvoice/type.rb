module RFinvoice
  module Type
    class << self
      def limit_and_klass_for(definition, klass)
        if definition.is_a?(::Array)
          min, max = definition
          [(min..max), "#{klass}#{min}_#{max}"]
        else
          [definition, "#{klass}#{definition}"]
        end
      end
    end
  end
end

require 'rfinvoice/coercion/base_coercion'
require 'rfinvoice/coercion/helper/limit'
require 'rfinvoice/coercion/helper/pattern'
require 'rfinvoice/coercion/helper/enum'
require 'rfinvoice/coercion/helper/normalize_string'
require 'rfinvoice/coercion/amount_coercion'
require 'rfinvoice/type/string_type'
require 'rfinvoice/type/token_type'
require 'rfinvoice/type/nmtoken_type'
require 'rfinvoice/type/identifier_type'
require 'rfinvoice/type/account_number_scheme_type'
require 'rfinvoice/type/bic_scheme_type'
require 'rfinvoice/type/array_type'
require 'rfinvoice/type/invoice_type_code_pattern_type'
require 'rfinvoice/type/origin_code_type'
require 'rfinvoice/type/version_type'
require 'rfinvoice/type/monetary_amount_type'
require 'rfinvoice/type/epi_monetary_amount_type'
require 'rfinvoice/type/unit_amount_type'
require 'rfinvoice/type/exchange_rate_type'
require 'rfinvoice/type/percentage_type'
