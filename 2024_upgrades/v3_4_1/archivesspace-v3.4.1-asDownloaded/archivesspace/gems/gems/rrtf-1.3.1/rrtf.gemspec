# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rrtf/version'

Gem::Specification.new do |spec|
  spec.name          = "rrtf"
  spec.version       = RRTF::VERSION
  spec.authors       = ["Wesley Hileman"]
  spec.email         = ["whileman133@gmail.com"]

  spec.summary       = %q{A ruby-based rich text format (RTF) document generator.}
  spec.homepage      = "https://github.com/whileman133/rrtf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "byebug"
  # Required for HTML converter functionality
  spec.add_dependency "nokogiri"
  spec.add_dependency "tidy"
  spec.add_dependency "fastimage"
end
