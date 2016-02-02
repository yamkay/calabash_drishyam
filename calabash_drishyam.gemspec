# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calabash_drishyam/version'

Gem::Specification.new do |spec|
  spec.name          = "calabash_drishyam"
  spec.version       = CalabashDrishyam::VERSION
  spec.authors = ["Mohan Kumar Selvaraj"]
    spec.email = ["yamkayselvaraj@gmail.com"]
  spec.summary = %q{ 'Drishyam' means 'Scene' in Indian languages. This tool is a simple view objects inspector for the popular mobile UI automation tool 'Calabash'.  }
  spec.description   = %q{This gem is useful for inspecting the objects generated by Calabash in the view port of mobile applications in iOS platform.}
  spec.homepage      = "https://github.com/yamkay/calabash_drishyam"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables = ['calabash_drishyam']
  spec.default_executable = 'calabash_drishyam'
  spec.require_paths = ["lib"]
    
  spec.add_runtime_dependency "sinatra", "~> 1.4"
  spec.add_runtime_dependency "sinatra-contrib", "~> 1.4"
  spec.add_runtime_dependency "daemons", "~> 1.2"
  spec.add_runtime_dependency "calabash-cucumber", "~> 0.16"
  spec.add_runtime_dependency "htmlentities", "~> 4.3"
     


  spec.add_development_dependency "json_spec", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
    
end
