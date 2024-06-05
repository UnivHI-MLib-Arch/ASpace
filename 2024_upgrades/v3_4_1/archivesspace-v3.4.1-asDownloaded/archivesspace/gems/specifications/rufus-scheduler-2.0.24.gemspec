# -*- encoding: utf-8 -*-
# stub: rufus-scheduler 2.0.24 ruby lib

Gem::Specification.new do |s|
  s.name = "rufus-scheduler".freeze
  s.version = "2.0.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Mettraux".freeze]
  s.date = "2013-09-02"
  s.description = "job scheduler for Ruby (at, cron, in and every jobs).".freeze
  s.email = ["jmettraux@gmail.com".freeze]
  s.homepage = "http://github.com/jmettraux/rufus-scheduler".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "job scheduler for Ruby (at, cron, in and every jobs)".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<tzinfo>.freeze, [">= 0.3.22"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 2.7.0"])
  else
    s.add_dependency(%q<tzinfo>.freeze, [">= 0.3.22"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.7.0"])
  end
end
