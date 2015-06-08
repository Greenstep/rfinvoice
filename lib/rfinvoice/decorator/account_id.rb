module RFinvoice
  module Decorator
    class AccountID < Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true
        subclass.property :identification_scheme_name, as: 'IdentificationSchemeName', attribute: true
      end
    end
  end
end
