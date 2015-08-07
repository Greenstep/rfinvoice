module RFinvoice
  module Decorator
    class BaseDecorator < ::Representable::Decorator
      include ::Representable::XML

      class << self
        def inherited(subclass)
          subclass.representation_wrap = subclass.name.demodulize
          model_klass                  = "RFinvoice::#{subclass.name.demodulize}".constantize
          init_xml_properties(subclass, model_klass)
        end

        def init_xml_properties(subclass, model_klass)
          return unless model_klass.respond_to?(:xml_properties)
          model_klass.xml_properties.each do |property|
            case property[:type]
            when :property
              subclass.simple_item(:property, property)
            when :complex_property
              subclass.decorated_item(:property, property)
            when :collection
              subclass.simple_item(:collection, property)
            when :complex_collection
              subclass.decorated_item(:collection, property)
            end
          end
        end

        def simple_item(type, options)
          key = options[:key]
          __send__(type, key.underscore.to_sym, as: key,
                   skip_render: ->(obj, _) { !obj.present? },
                   skip_parse:  ->(fragment, _) { !fragment.present? })
        end

        def decorated_item(type, options)
          key   = options[:key]
          klass = options[:klass]
          __send__(type, key.underscore.to_sym,
                   as:        key,
                   class:     "RFinvoice::#{klass}".constantize,
                   decorator: "RFinvoice::Decorator::#{klass}".constantize
          )
        end
      end
    end
  end
end
