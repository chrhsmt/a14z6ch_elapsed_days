# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elapsed_days/version'

Gem::Specification.new do |spec|
  spec.name          = "elapsed_days"
  spec.version       = ElapsedDays::VERSION
  spec.authors       = ["Chihiro Hashimoto"]
  spec.email         = ["a14z6ch@aiit.ac.jp"]
  spec.summary       = %q{To calculate days from birthday.}
  spec.description   = %q{To calculate days from birthday.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

end
