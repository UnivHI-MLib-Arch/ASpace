# -*- encoding: utf-8 -*-
# stub: jdbc-derby 10.12.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jdbc-derby".freeze
  s.version = "10.12.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sieger, Ola Bini, Karol Bucek and JRuby contributors".freeze]
  s.date = "2016-12-23"
  s.description = "Install this gem `require 'jdbc/derby'` and invoke `Jdbc::Derby.load_driver` within JRuby to load the driver.".freeze
  s.email = ["nick@nicksieger.com".freeze, "ola.bini@gmail.com".freeze, "self@kares.org".freeze]
  s.homepage = "http://github.com/jruby/activerecord-jdbc-adapter/tree/master/jdbc-derby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Derby/JavaDB for JRuby, includes the JDBC driver as well as the embedded Derby database.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version
end
