module RFinvoice
  module Decorator
    class Base < ::Representable::Decorator
      include ::Representable::XML

      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
        model_klass                  = ::RFinvoice.const_get(subclass.name.demodulize)
        if model_klass.respond_to?(:simple_properties)
          subclass.properties model_klass.simple_properties
        end
        if model_klass.respond_to?(:complex_properties)
          subclass.decorated_properties model_klass.complex_properties
        end
        if model_klass.respond_to?(:simple_collections)
          subclass.collections model_klass.simple_collections
        end
      end

      class << self
        def collections(array)
          array.each do |key|
            collection key.underscore.to_sym, as: key
          end
        end

        def properties(array)
          array.each do |key|
            property key.underscore.to_sym, as: key
          end
        end

        def decorated_properties(array)
          array.each do |key|
            key, klass = if key.is_a?(::Hash)
                           [key[:key], key[:klass]]
                         else
                           [key, key]
                         end
            property key.underscore.to_sym, as: key, decorator: ::RFinvoice::Decorator.const_get(klass)
          end
        end
      end
    end
  end
end
