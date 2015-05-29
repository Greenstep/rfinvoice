require 'rubygems'
require 'logger'
require 'active_support/core_ext/string/inflections'
require 'virtus'
require 'rfinvoice/version'
require 'rfinvoice/configuration'
require 'rfinvoice/error'
require 'rfinvoice/type/string'
require 'rfinvoice/type/identifier'
require 'rfinvoice/model'
require 'rfinvoice/invoice/party_identifier'
require 'rfinvoice/invoice/seller_party_details'
require 'rfinvoice/invoice'

require 'rfinvoice/railtie' if defined?(Rails::Railtie)

module RFinvoice

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    # Look for the logger currently defined
    def logger
      self.configuration.logger || ::Logger.new(nil)
    end

    def configure
      yield(configuration)
    end

  end
end
