module RFinvoice
  module Decorator
    class Date < Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        subclass.property :value, content: true, exec_context: :decorator
        subclass.property :format, as: 'Format', attribute: true
      end

      def value
        represented.value.strftime('%Y%m%d')
      end
    end
  end
end
