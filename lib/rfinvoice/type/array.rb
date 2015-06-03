require 'rfinvoice/coercion/array'

module RFinvoice
  module Type
    # Default Array
    class Array < ::Array; end
    ::RFinvoice::Coercion::Array.primitive(::RFinvoice::Type::Array)

    GENERIC_ARRAY_TYPES = [
      [0, 2], [0, 3], [0, 7],
      [1, 2], [1, 3], [1, 1000]
    ].each do |(min, max)|
      # Array specific class
      klass_name = "Array#{min}_#{max}" #
      const_set(klass_name, ::Class.new(::Array))         # class ::RFinvoice::Type::Array0_2 < ::Array; end
      klass = ::Class.new(::RFinvoice::Coercion::Array)   # class ::RFinvoice::Coercion::Array0_2 < ::RFinvoice::Coercion::Array
      klass.primitive(const_get(klass_name))              #   primitive ::RFinvoice::Type::Array0_2
      klass.const_set('LIMIT', min..max)                  #   LIMIT = 0..4
      ::RFinvoice::Coercion.const_set(klass_name, klass)  # end
    end
  end
end
