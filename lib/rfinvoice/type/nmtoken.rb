require 'rfinvoice/coercion/nmtoken'

module RFinvoice
  module Type
    # Default string
    NMToken = ::Axiom::Types::String.new
    ::RFinvoice::Coercion::NMToken.primitive(::RFinvoice::Type::NMToken)

    GENERIC_NMTOKEN_TYPES = [
      [0, 14], [0, 35], [0, 4], [0, 512],
      [1, 34], [2, 35], [8, 11]
    ].each do |(min, max)|
      # genericStringType specific class
      klass_name = "NMToken#{min}_#{max}"                  #
      const_set(klass_name, ::Axiom::Types::String.new)    # ::RFinvoice::Type::NMToken0_14 = ::Axiom::Types::String.new
      klass = ::Class.new(::RFinvoice::Coercion::NMToken)  # class ::RFinvoice::Coercion::NMToken0_14 < ::RFinvoice::Coercion::NMToken
      klass.primitive(const_get(klass_name))               #   primitive ::RFinvoice::Type::NMToken0_14
      klass.const_set('LIMIT', min..max)                   #   LIMIT = 0..14
      ::RFinvoice::Coercion.const_set(klass_name, klass)   # end
    end
  end
end
