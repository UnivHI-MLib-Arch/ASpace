# -*- encoding: utf-8 -*-
# stub: therubyrhino 2.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "therubyrhino".freeze
  s.version = "2.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charles Lowell".freeze]
  s.date = "2019-06-23"
  s.description = "Call javascript code and manipulate javascript objects from ruby. Call ruby code and manipulate ruby objects from javascript.".freeze
  s.email = "cowboyd@thefrontside.net".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/cowboyd/therubyrhino".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Embed the Rhino JavaScript interpreter into JRuby".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<therubyrhino_jar>.freeze, [">= 1.7.4", "< 1.7.9"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
    s.add_development_dependency(%q<mocha>.freeze, ["~> 0.13.3"])
  else
    s.add_dependency(%q<therubyrhino_jar>.freeze, [">= 1.7.4", "< 1.7.9"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0.13.3"])
  end
end
