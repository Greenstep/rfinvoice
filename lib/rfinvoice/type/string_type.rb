require 'rfinvoice/coercion/string_coercion'

module RFinvoice
  module Type
    # Default string
    StringType = ::Axiom::Types::String.new
    ::RFinvoice::Coercion::String.primitive(::RFinvoice::Type::StringType)

    GENERIC_STRING_TYPES = [
      [0, 4], [1, 4], [1, 8], [0, 10],
      [0, 14], [1, 20], [0, 35], [1, 35], [2, 35],
      [0, 48], [2, 48], [0, 70], [1, 70], [2, 70],
      [0, 80], [15, 61], [0, 100], [0, 512]
    ].each do |definition|
      # genericStringType specific class
      limit, klass_name = limit_and_klass_for(definition, 'String')
      const_set(klass_name, ::Axiom::Types::String.new)                 # ::RFinvoice::Type::String0_4 = ::Axiom::Types::String.new
      klass = ::Class.new(::RFinvoice::Coercion::String)                # class ::RFinvoice::Coercion::String0_4 < ::RFinvoice::Coercion::String
      klass.primitive(const_get(klass_name))                            #   primitive ::RFinvoice::Type::String0_4
      klass.const_set('LIMIT', limit)                                   #   LIMIT = 0..4
      ::RFinvoice::Coercion.const_set("#{klass_name}Coercion", klass)   # end
    end
  end
end
