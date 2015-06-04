module RFinvoice
  module Decorator
    class Invoice < Base
      self.representation_wrap = 'Finvoice'

      # Attributes
      property :version, as: :Version, attribute: true
      property :xmlns_xsi, as: 'xmlns:xsi', attribute: true
      property :xsi_nonamespace, as: 'xsi:noNamespaceSchemaLocation', attribute: true
    end
  end
end
