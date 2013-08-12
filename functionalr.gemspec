# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'functionalr/version'

Gem::Specification.new do |spec|
  spec.name          = "functionalr"
  spec.version       = Functionalr::VERSION
  spec.authors       = ["David Chelimsky"]
  spec.email         = ["dchelimsky@gmail.com"]
  spec.description   = "Playground/grab-bag of stuff to make Ruby programs more functional. Completely unorganized, unrecommended, and unsupported."
  spec.summary       = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "wrong"
end
