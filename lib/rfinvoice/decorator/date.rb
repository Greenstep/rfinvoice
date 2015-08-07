module RFinvoice
  module Decorator
    class Date < Representable::Decorator
      include ::Representable::XML

      property :value, content: true, exec_context: :decorator, required: false
      property :format, as: 'Format', attribute: true

      def value
        represented.value.strftime('%Y%m%d')
      end

      def value=(value)
        represented.value = value
      end
    end
  end
end
