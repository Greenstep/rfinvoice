require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'coveralls/rake/task'

# RSpec
RSpec::Core::RakeTask.new(:spec)
# Coveralls
Coveralls::RakeTask.new

# rubocop
require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

# reek
require 'reek/rake/task'

Reek::Rake::Task.new do |t|
  t.fail_on_error = false
  t.source_files = Dir['lib/**/*.rb']
end

default_tasks = [:spec, :rubocop, :reek]
default_tasks << 'coveralls:push' if ENV['TRAVIS']

task default: default_tasks
