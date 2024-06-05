# -*- encoding: utf-8 -*-
# stub: saxon-rb 0.8.3 java lib

Gem::Specification.new do |s|
  s.name = "saxon-rb".freeze
  s.version = "0.8.3"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matt Patterson".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-10-05"
  s.description = "Wraps the Saxon 9.9 XML and XSLT library so you can process, transform, query, and generate XML documents using XSLT 3, XQuery, and XPath 3.1. The HE open-source version is bundled, but you can use the paid-for PE and EE versions of the Java library with this gem as well.\n\nIt aims to provide an idiomatic Ruby wrapper around all of Saxon's features.".freeze
  s.email = ["matt@werkstatt.io".freeze]
  s.homepage = "https://github.com/fidothe/saxon-rb".freeze
  s.licenses = ["MIT".freeze]
  s.requirements = ["jar net.sf.saxon, Saxon-HE, 9.9.1-7".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Saxon 9.9 for JRuby, with an idiomatic Ruby API".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<jar-dependencies>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<vcr>.freeze, ["~> 4.0"])
    s.add_development_dependency(%q<addressable>.freeze, ["~> 2.4.0"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 2.3.2"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.12"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<jar-dependencies>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<vcr>.freeze, ["~> 4.0"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 2.3.2"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.12"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
  end
end
