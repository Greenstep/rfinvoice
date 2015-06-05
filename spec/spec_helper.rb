require 'simplecov'
require 'rfinvoice'
require 'ffaker'
require 'rspec_virtus'
require 'rspec_representable'
require 'fabrication'
::Dir["./spec/support/**/*.rb"].sort.each { |f| require f}
