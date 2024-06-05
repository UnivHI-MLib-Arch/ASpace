# -*- encoding: utf-8 -*-
# stub: oai 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "oai".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ed Summers".freeze]
  s.autorequire = "oai".freeze
  s.date = "2015-05-08"
  s.email = "ehs@pobox.com".freeze
  s.executables = ["oai".freeze]
  s.files = ["bin/oai".freeze]
  s.homepage = "http://github.com/code4lib/ruby-oai".freeze
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A ruby library for working with the Open Archive Initiative Protocol for Metadata Harvesting (OAI-PMH)".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<builder>.freeze, [">= 3.1.0"])
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<faraday_middleware>.freeze, [">= 0"])
  else
    s.add_dependency(%q<builder>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<faraday_middleware>.freeze, [">= 0"])
  end
end
