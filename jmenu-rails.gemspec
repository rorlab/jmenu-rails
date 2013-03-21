# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jmenu/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "jmenu-rails"
  gem.version       = Jmenu::Rails::VERSION
  gem.authors       = ["Hyoseong Choi"]
  gem.email         = ["rorlab@gmail.com"]
  gem.description   = %q{jMenu jquery plugin for rails}
  gem.summary       = %q{Gemify jMenu assets for rails}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_dependency "railties", "~> 4.0.0.beta1"
end
