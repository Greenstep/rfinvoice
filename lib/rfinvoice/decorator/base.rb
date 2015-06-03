module RFinvoice
  module Decorator
    class Base < ::Representable::Decorator
      include ::Representable::XML
      def self.inherited(subclass)
        subclass.representation_wrap = subclass.name.demodulize
      end

      class << self
        def collections(array)
          array.each do |key|
            collection key.underscore.to_sym, as: key
          end
        end
      end
    end
  end
end
