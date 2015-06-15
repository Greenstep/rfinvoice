module RFinvoice
  module Decorator
    class SubRowDefinitionHeaderText < Representable::Decorator
      include ::Representable::XML
      self.representation_wrap = 'SubRowDefinitionHeaderText'
      property :value, content: true
      property :code, as: 'DefinitionCode', attribute: true
    end
  end
end
