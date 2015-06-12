module RFinvoice
  class Model
    class_attribute :xml_properties
    self.xml_properties = []
    include ::Virtus.model(strict: true)

    def decorator
      @decorator ||= "RFinvoice::Decorator::#{self.class.to_s.demodulize}".constantize.new(self)
    end

    class << self
      def add_simple_properties(klass, array, options)
        self.xml_properties += array.map { |key| { key: key, type: :property } }
        array.each do |key|
          attribute key.underscore, klass, options
        end
      end

      def add_string_simple_properties(type, array, options = {})
        klass = "RFinvoice::Type::String#{type}".constantize
        add_simple_properties(klass, array, options)
      end

      def add_date_properties(array, options = {})
        add_properties_with_type(array, ::RFinvoice::Date, options)
      end

      def add_amount_properties(array, options = {})
        add_properties_with_type(array, ::RFinvoice::Amount, options)
      end

      def add_quantity_properties(len, array, options = {})
        klass = "RFinvoice::Quantity#{len}".constantize
        add_properties_with_type(array, klass, options)
      end

      def add_percentage_properties(array, options = {})
        add_simple_properties(::RFinvoice::Type::PercentageType, array, options)
      end

      def add_nmtoken_simple_properties(type, array, options = {})
        klass = "RFinvoice::Type::NMToken#{type}".constantize
        add_simple_properties(klass, array, options)
      end

      def add_token_simple_properties(type, array, options = {})
        klass = "RFinvoice::Type::Token#{type}".constantize
        add_simple_properties(klass, array, options)
      end

      def add_modelized_properties(array, options = {})
        self.xml_properties += array.map { |key| { klass: key, key: key, type: :complex_property } }
        array.each do |key|
          attribute key.underscore, "RFinvoice::#{key}".constantize, options
        end
      end

      def add_properties_with_type(array, klass, options = {})
        klass_name = klass.name.demodulize
        array.each do |key|
          self.xml_properties += [{ klass: klass_name, key: key, type: :complex_property }]
          attribute key.underscore, klass, options
        end
      end

      def add_simple_collections(array, klass, options = {})
        self.xml_properties += array.map { |key| { key: key, type: :collection } }
        array.each do |key|
          attribute key.underscore, klass, options
        end
      end

      def add_modelized_collection(array, klass, options = {})
        klass_name = if klass.is_a?(::Array)
                       klass.first.name.demodulize
                     else
                       klass.name.demodulize
                     end
        array.each do |key|
          self.xml_properties += [{ klass: klass_name, key: key, type: :complex_collection }]
          attribute key.underscore, klass, options
        end
      end

      def add_modelized_collection_array(array, options = {})
        array.each do |key|
          self.xml_properties += [{ klass: key, key: key, type: :complex_collection }]
          attribute key.underscore, ::Array["RFinvoice::#{key}".constantize], options
        end
      end
    end
  end
end
