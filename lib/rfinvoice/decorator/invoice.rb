module RFinvoice
  module Decorator
    class Invoice < Base
      self.representation_wrap = 'Finvoice'

      # Attributes
      property :version, as: :Version, attribute: true
      property :xmlns_xsi, as: 'xmlns:xsi', attribute: true
      property :xsi_nonamespace, as: 'xsi:noNamespaceSchemaLocation', attribute: true

      properties ::RFinvoice::Invoice::STRINGS_0_35

      properties ::RFinvoice::Invoice::STRINGS_0_512

      %w(MessageTransmissionDetails SellerPartyDetails SellerCommunicationDetails SellerInformationDetails).each do |klass|
        property klass.underscore, decorator: "RFinvoice::Decorator::#{klass}".constantize
      end
    end
  end
end
