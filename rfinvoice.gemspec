# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rfinvoice/version'

Gem::Specification.new do |spec|
  spec.name          = 'rfinvoice'
  spec.version       = RFinvoice::VERSION
  spec.authors       = ['Alexander Simonov']
  spec.email         = ['alex@simonov.me']
  spec.description   = 'Finvoice invoices generation with ruby.'
  spec.summary       = 'Finvoice invoices generation with ruby.'
  spec.homepage      = 'https://github.com/Greenstep/rfinvoice'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.6.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'activesupport', '>= 4.0', '< 5.0'
  spec.add_dependency 'virtus', '~> 1.0'
  spec.add_dependency 'representable', '~> 2.0'
end
