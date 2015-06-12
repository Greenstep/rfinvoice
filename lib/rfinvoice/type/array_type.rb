require 'rfinvoice/coercion/array_coercion'

module RFinvoice
  module Type
    # Default Array
    class ArrayType < ::Array; end
    ::RFinvoice::Coercion::ArrayCoercion.primitive(::RFinvoice::Type::ArrayType)

    GENERIC_ARRAY_TYPES = [
      [0, 2], [0, 3], [0, 7],
      [1, 2], [1, 3], [1, 1000]
    ].each do |definition|
      # Array specific class
      limit, klass_name = limit_and_klass_for(definition, 'Array')
      const_set(klass_name, ::Class.new(::Array))                         # class ::RFinvoice::Type::Array0_2 < ::Array; end
      klass = ::Class.new(::RFinvoice::Coercion::ArrayCoercion)           # class ::RFinvoice::Coercion::Array0_2 < ::RFinvoice::Coercion::Array
      klass.primitive(const_get(klass_name))                              #   primitive ::RFinvoice::Type::Array0_2
      klass.const_set('LIMIT', limit)                                     #   LIMIT = 0..4
      ::RFinvoice::Coercion.const_set("#{klass_name}Coercion", klass)     # end
    end
  end
end
