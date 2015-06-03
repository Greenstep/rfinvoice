module RFinvoice
  class Model
    include ::Virtus.model(strict: true)

    def decorator
      @decorator ||= "RFinvoice::Decorator::#{self.class.to_s.demodulize}".constantize.new(self)
    end

    class << self
      def init_strings(type, array, required)
        klass = "RFinvoice::Type::String#{type}".constantize
        array.each do |key|
          attribute key.underscore, klass, required: required
        end
      end

      def init_strings_0_35(array, required = false)
        init_strings('0_35', array, required)
      end

      def init_strings_2_35(array, required = false)
        init_strings('2_35', array, required)
      end

      def init_strings_0_512(array, required = false)
        init_strings('0_512', array, required)
      end
    end
  end
end
