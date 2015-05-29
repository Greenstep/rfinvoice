module RFinvoice
  class Model
    include ::Virtus.model(strict: true)

    class << self
      def init_strings_0_35
        self::STRINGS_0_35.each do |key|
          attribute key.underscore, ::RFinvoice::Type::String0_35, required: false
        end
      end

      def init_strings_0_512
        self::STRINGS_0_512.each do |key|
          attribute key.underscore, ::RFinvoice::Type::String0_512, required: false
        end
      end
    end

  end
end