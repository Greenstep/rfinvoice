require 'rfinvoice/coercion/nmtoken_coercion'

module RFinvoice
  module Type
    # Default string
    NMTokenType = ::Axiom::Types::String.new
    ::RFinvoice::Coercion::NMTokenCoercion.primitive(::RFinvoice::Type::NMTokenType)

    GENERIC_NMTOKEN_TYPES = [
      [0, 14], [0, 35], [0, 4], [0, 512],
      [1, 34], [2, 35], [8, 11], 2
    ].each do |definition|
      limit, klass_name = limit_and_klass_for(definition, 'NMToken')
      const_set(klass_name, ::Axiom::Types::String.new)                 # ::RFinvoice::Type::NMToken0_14 = ::Axiom::Types::String.new
      klass = ::Class.new(::RFinvoice::Coercion::NMTokenCoercion)       # class ::RFinvoice::Coercion::NMToken0_14 < ::RFinvoice::Coercion::NMToken
      klass.primitive(const_get(klass_name))                            #   primitive ::RFinvoice::Type::NMToken0_14
      klass.const_set('LIMIT', limit)                                   #   LIMIT = 0..14
      ::RFinvoice::Coercion.const_set("#{klass_name}Coercion", klass)   # end
    end
  end
end
