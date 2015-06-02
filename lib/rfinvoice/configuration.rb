module RFinvoice
  class Configuration
    attr_accessor :raise_on_broken_value

    # Logger used by RFinvoice
    attr_accessor :logger

    def initialize
      @raise_on_broken_value = true
    end
  end
end
