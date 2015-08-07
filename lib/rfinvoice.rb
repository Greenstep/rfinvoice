require 'rubygems'
require 'logger'
require 'active_support/core_ext/string/inflections'
require 'active_support/core_ext/class/attribute'
require 'active_support/core_ext/object/blank'
require 'virtus'
require 'representable'
require 'representable/xml'
require 'rfinvoice/version'
require 'rfinvoice/configuration'
require 'rfinvoice/error'
require 'rfinvoice/type'
require 'rfinvoice/model'
require 'rfinvoice/invoice'
require 'rfinvoice/decorator'
require 'rfinvoice/railtie' if defined?(Rails::Railtie)

module RFinvoice
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    # Look for the logger currently defined
    def logger
      configuration.logger || ::Logger.new(nil)
    end

    def configure
      yield(configuration)
    end

    def reset
      @configuration = Configuration.new
    end
  end
end
