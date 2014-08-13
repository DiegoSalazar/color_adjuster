# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ColorAdjuster/version'

Gem::Specification.new do |spec|
  spec.name          = "ColorAdjuster"
  spec.version       = ColorAdjuster::VERSION
  spec.authors       = ["Diego Salazar"]
  spec.email         = ["diego@greyrobot.com"]
  spec.summary       = %q{Lets you lighten or darken a hex color string}
  spec.description   = %q{Drop this module in a model that has a color attribute and be able to adjust the color.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
