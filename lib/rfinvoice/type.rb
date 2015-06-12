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

require 'rfinvoice/coercion/base'
require 'rfinvoice/coercion/helper/limit'
require 'rfinvoice/coercion/helper/pattern'
require 'rfinvoice/coercion/helper/enum'
require 'rfinvoice/coercion/helper/normalize_string'
require 'rfinvoice/coercion/amount_coercion'
require 'rfinvoice/type/string'
require 'rfinvoice/type/token'
require 'rfinvoice/type/nmtoken'
require 'rfinvoice/type/identifier'
require 'rfinvoice/type/account_number_scheme'
require 'rfinvoice/type/bic_scheme'
require 'rfinvoice/type/array'
require 'rfinvoice/type/invoice_type_code_pattern'
require 'rfinvoice/type/origin_code'
require 'rfinvoice/type/version'
require 'rfinvoice/type/monetary_amount'
require 'rfinvoice/type/epi_monetary_amount'
require 'rfinvoice/type/unit_amount'
require 'rfinvoice/type/exchange_rate'
require 'rfinvoice/type/percentage'
