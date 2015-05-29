require 'rfinvoice/coercion/string'

module RFinvoice
  module Type
    [
      [0, 4], [1, 4], [1, 8], [0, 10],
      [0, 14], [1, 20], [0, 35], [1, 35], [2, 35],
      [0, 48], [2, 48], [0, 70], [1, 70], [2, 70],
      [0, 80], [15, 61], [0, 100], [0, 512]
    ].each do |(min, max)|
      # genericStringType specific class
      klass_name = "String#{min}_#{max}"                        #
      self.const_set(klass_name, ::Axiom::Types::String.new)    # ::RFinvoice::Type::String0_4 = ::Axiom::Types::String.new
      klass = ::Class.new(::RFinvoice::Coersion::String)        # class ::RFinvoice::Coercion::String0_4 < ::RFinvoice::Coercion::String
      klass.primitive(self.const_get(klass_name))               #   primitive ::RFinvoice::Type::String0_4
      klass.const_set('LIMIT', min..max)                        #   LIMIT = 0..4
      ::RFinvoice::Coersion.const_set(klass_name, klass)        # end
    end
  end
end
