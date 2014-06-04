# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google-civic/version'

Gem::Specification.new do |spec|
  spec.name          = "google-civic"
  spec.version       = Google::Civic::VERSION
  spec.authors       = ["Coding ZEAL", "Adam Cuppy"]
  spec.email         = ["adam@codingzeal.com"]
  spec.summary       = %q{Google Civic API wrapper}
  spec.homepage      = "https://github.com/CodingZeal/google-civic-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json"
  spec.add_dependency "hashie"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"
end
