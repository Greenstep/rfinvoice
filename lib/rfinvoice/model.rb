module RFinvoice
  class Model
    class_attribute :simple_properties, :complex_properties, :simple_collections, :complex_collections
    self.simple_properties  = []
    self.complex_properties = []
    self.simple_collections = []
    self.complex_collections = []
    include ::Virtus.model(strict: true)

    def decorator
      @decorator ||= "RFinvoice::Decorator::#{self.class.to_s.demodulize}".constantize.new(self)
    end

    class << self
      def add_simple_properties(klass, array, options)
        self.simple_properties += array
        array.each do |key|
          attribute key.underscore, klass, options
        end
      end

      def add_string_simple_properties(type, array, options = {})
        klass = "RFinvoice::Type::String#{type}".constantize
        add_simple_properties(klass, array, options)
      end

      def add_nmtoken_simple_properties(type, array, options = {})
        klass = "RFinvoice::Type::NMToken#{type}".constantize
        add_simple_properties(klass, array, options)
      end

      def init_dates(array, options = {})
        array.each do |key|
          attribute key.underscore, ::RFinvoice::Date, options
        end
      end

      def add_complex_properties(array, options = {})
        self.complex_properties += array
        array.each do |key|
          attribute key.underscore, "RFinvoice::#{key}".constantize, options
        end
      end

      def add_complex_properties_with_type(array, klass, options = {})
        klass_name = klass.name.demodulize
        array.each do |key|
          self.complex_properties += [{ klass: klass_name, key: key }]
          attribute key.underscore, klass, options
        end
      end

      def add_simple_collections(array, klass, options = {})
        self.simple_collections += array
        array.each do |key|
          attribute key.underscore, klass, options
        end
      end

      def add_complex_collection(array, klass, options = {})
        klass_name = if klass.is_a?(::Array)
                      klass.first.name.demodulize
                     else
                      klass.name.demodulize
                     end
        array.each do |key|
          self.complex_collections += [{ klass: klass_name, key: key }]
          attribute key.underscore, klass, options
        end
      end
    end
  end
end
