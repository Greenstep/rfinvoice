module RFinvoice
  module Decorator
    class Date < Representable::Decorator
      include ::Representable::XML

      property :value, content: true, exec_context: :decorator
      property :format, as: 'Format', attribute: true

      def value
        represented.value.strftime('%Y%m%d')
      end
    end
  end
end
