module RFinvoice
  module Decorator
    class RowDefinitionHeaderText < Representable::Decorator
      include ::Representable::XML
      self.representation_wrap = 'RowDefinitionHeaderText'
      property :value, content: true
      property :code, as: 'DefinitionCode', attribute: true
    end
  end
end
