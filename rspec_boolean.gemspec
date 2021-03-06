# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_boolean/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_boolean"
  spec.version       = RspecBoolean::VERSION
  spec.authors       = ["Lorenzo Sinisi"]
  spec.email         = ["compersionapps@gmail.com"]

  spec.summary       = %q{Add be_boolean to Rspec}
  spec.description   = %q{Add be_boolean to Rspec}
  spec.homepage      = "https://github.com/compersionapps/rspec_boolean"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rspec-rails', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
