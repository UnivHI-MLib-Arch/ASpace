# -*- encoding: utf-8 -*-
# stub: rjack-jackson 1.8.11.0 java lib

Gem::Specification.new do |s|
  s.name = "rjack-jackson".freeze
  s.version = "1.8.11.0"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Kellum".freeze]
  s.date = "2012-11-10"
  s.email = ["dek-oss@gravitext.com".freeze]
  s.extra_rdoc_files = ["History.rdoc".freeze, "README.rdoc".freeze]
  s.files = ["History.rdoc".freeze, "README.rdoc".freeze]
  s.homepage = "http://rjack.rubyforge.org/jackson".freeze
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A gem packaging of Jackson JSON Processor.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<minitest>.freeze, ["~> 2.2"])
    s.add_development_dependency(%q<rjack-tarpit>.freeze, ["~> 2.0"])
  else
    s.add_dependency(%q<minitest>.freeze, ["~> 2.2"])
    s.add_dependency(%q<rjack-tarpit>.freeze, ["~> 2.0"])
  end
end
