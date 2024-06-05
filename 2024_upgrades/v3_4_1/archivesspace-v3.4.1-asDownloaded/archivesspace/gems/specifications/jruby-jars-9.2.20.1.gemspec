# -*- encoding: utf-8 -*-
# stub: jruby-jars 9.2.20.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jruby-jars".freeze
  s.version = "9.2.20.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charles Oliver Nutter".freeze]
  s.date = "2021-11-30"
  s.description = "This gem includes JRuby core and the Ruby standard library as jar files.\nIt provides a way to have other gems depend on JRuby without including (and\nfreezing to) a specific jruby-complete jar version.".freeze
  s.email = "headius@headius.com".freeze
  s.homepage = "https://github.com/jruby/jruby/tree/master/maven/jruby-jars".freeze
  s.licenses = ["EPL-1.0".freeze, "GPL-2.0".freeze, "LGPL-2.1".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "The core JRuby code and the JRuby stdlib as jar files.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version
end
