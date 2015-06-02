module RFinvoice
  module Decorator
    class Invoice < ::Representable::Decorator
      include ::Representable::XML
      # Tag name
      self.representation_wrap = 'Finvoice'

      # Attributes
      property :version, as: :Version, attribute: true
      property :xmlns_xsi, as: 'xmlns:xsi', attribute: true
      property :xsi_nonamespace, as: 'xsi:noNamespaceSchemaLocation', attribute: true

      # Nodes
      ::RFinvoice::Invoice::STRINGS_0_35.each do |key|
        property key.underscore.to_sym, as: key.to_sym
      end

      ['MessageTransmissionDetails', 'SellerPartyDetails'].each do |klass|
        property klass.underscore, decorator: "RFinvoice::Decorator::#{klass}".constantize
      end

    end
  end
end