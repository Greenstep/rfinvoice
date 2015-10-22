module RFinvoice
  module Decorator
    class DefinitionHeaderText < Representable::Decorator
      include ::Representable::XML
      self.representation_wrap = 'DefinitionHeaderText'
      property :value, content: true
      property :code, as: 'DefinitionCode', attribute: true, skip_render: ->(obj, _) { !obj.present? })
    end
  end
end
