require 'rails'
module RFinvoice
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      ::RFinvoice.configure do |config|
        config.logger ||= ::Rails.logger
      end
    end
  end
end
