# -*- encoding: utf-8 -*-
# stub: rrtf 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rrtf".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Wesley Hileman".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-06-11"
  s.email = ["whileman133@gmail.com".freeze]
  s.homepage = "https://github.com/whileman133/rrtf".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A ruby-based rich text format (RTF) document generator.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<tidy>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fastimage>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<tidy>.freeze, [">= 0"])
    s.add_dependency(%q<fastimage>.freeze, [">= 0"])
  end
end
