module RFinvoice
  module Decorator
    class AccountDecorator < Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true
        subclass.property :identification_scheme_name, as: 'IdentificationSchemeName', attribute: true
      end
    end
    class AccountID < AccountDecorator
    end

    class AccountBic < AccountDecorator
    end
  end
end
