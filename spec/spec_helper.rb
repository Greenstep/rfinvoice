require 'simplecov'
require 'coveralls'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter 'spec'
  minimum_coverage(76)
end
require 'rfinvoice'
require 'ffaker'
require 'rspec_virtus'
require 'rspec_representable'
require 'fabrication'
::Dir["./spec/support/**/*.rb"].sort.each { |f| require f}
