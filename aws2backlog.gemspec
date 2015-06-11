# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws2backlog/version'

Gem::Specification.new do |spec|
  spec.name          = "aws2backlog"
  spec.version       = Aws2backlog::VERSION
  spec.authors       = ["Masao Mochizuki"]
  spec.email         = ["masaomoc.0301988@gmail.com"]
  spec.summary       = %q{Output AWS information in Backlog Wiki format.}
  spec.description   = %q{Output AWS information in Backlog Wiki format.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'aws-sdk', '~> 2'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
