require 'rfinvoice/coercion/token'

module RFinvoice
  module Type
    # Default string
    Token = ::Axiom::Types::String.new
    ::RFinvoice::Coercion::Token.primitive(::RFinvoice::Type::Token)

    GENERIC_TOKEN_TYPES = [
      [0, 14], [1, 20], [0, 35], [2, 35], [0, 70], 3
    ].each do |definition|
      limit, klass_name = limit_and_klass_for(definition, 'Token')
      const_set(klass_name, ::Axiom::Types::String.new)     # ::RFinvoice::Type::Token1_20 = ::Axiom::Types::String.new
      klass = ::Class.new(::RFinvoice::Coercion::Token)     # class ::RFinvoice::Coercion::Token1_20 < ::RFinvoice::Coercion::Token
      klass.primitive(const_get(klass_name))                #   primitive ::RFinvoice::Type::Token1_20
      klass.const_set('LIMIT', limit)                       #   LIMIT = 0..14
      ::RFinvoice::Coercion.const_set(klass_name, klass)    # end
    end
  end
end
