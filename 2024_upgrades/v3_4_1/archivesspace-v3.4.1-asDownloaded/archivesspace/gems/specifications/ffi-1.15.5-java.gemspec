# -*- encoding: utf-8 -*-
# stub: ffi 1.15.5 java lib

Gem::Specification.new do |s|
  s.name = "ffi".freeze
  s.version = "1.15.5"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ffi/ffi/issues", "changelog_uri" => "https://github.com/ffi/ffi/blob/master/CHANGELOG.md", "documentation_uri" => "https://github.com/ffi/ffi/wiki", "mailing_list_uri" => "http://groups.google.com/group/ruby-ffi", "source_code_uri" => "https://github.com/ffi/ffi/", "wiki_uri" => "https://github.com/ffi/ffi/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Wayne Meissner".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDLjCCAhagAwIBAgIBCTANBgkqhkiG9w0BAQsFADA9MQ4wDAYDVQQDDAVrYW5p\nczEXMBUGCgmSJomT8ixkARkWB2NvbWNhcmQxEjAQBgoJkiaJk/IsZAEZFgJkZTAe\nFw0yMTA0MDcxMzQzNTZaFw0yMjA0MDcxMzQzNTZaMD0xDjAMBgNVBAMMBWthbmlz\nMRcwFQYKCZImiZPyLGQBGRYHY29tY2FyZDESMBAGCgmSJomT8ixkARkWAmRlMIIB\nIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApop+rNmg35bzRugZ21VMGqI6\nHGzPLO4VHYncWn/xmgPU/ZMcZdfj6MzIaZJ/czXyt4eHpBk1r8QOV3gBXnRXEjVW\n9xi+EdVOkTV2/AVFKThcbTAQGiF/bT1n2M+B1GTybRzMg6hyhOJeGPqIhLfJEpxn\nlJi4+ENAVT4MpqHEAGB8yFoPC0GqiOHQsdHxQV3P3c2OZqG+yJey74QtwA2tLcLn\nQ53c63+VLGsOjODl1yPn/2ejyq8qWu6ahfTxiIlSar2UbwtaQGBDFdb2CXgEufXT\nL7oaPxlmj+Q2oLOfOnInd2Oxop59HoJCQPsg8f921J43NCQGA8VHK6paxIRDLQID\nAQABozkwNzAJBgNVHRMEAjAAMAsGA1UdDwQEAwIEsDAdBgNVHQ4EFgQUvgTdT7fe\nx17ugO3IOsjEJwW7KP4wDQYJKoZIhvcNAQELBQADggEBAGCQhS4TBqUG1bSY5gw5\nemj2GNePHFNlXTZ/W0/7FlnXQz/LyBZeYmy4AIHcdY0w9xsu3bPNGk8kLBkHgK3Y\nl/yWiUK0NYRI3K3yI2EoTfrHPDT8XIgBPeUUGv5Nje+SUYMQWsfYWKo3+vLEG64a\nn1xP+1+g2Za39WCS5LwnDWMiIk47NnxR9yXErKd0Iau/Q/IarYsHFX6kWWmlMoln\nW1lMomCcOJFwIPnsy6aqq7YfS0YcqyHjcvs1h5k3zPaIRWhoPlQivniMVMa3Txh+\nNEF/4atY64rruzkyfxGEcrFFOHJIkWnWQjRGaiZdgULxf7ira2gEFvV/ZtamqJWF\nc+I=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2022-01-10"
  s.description = "Ruby FFI library".freeze
  s.email = "wmeissner@gmail.com".freeze
  s.homepage = "https://github.com/ffi/ffi/wiki".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.rdoc_options = ["--exclude=ext/ffi_c/.*\\.o$".freeze, "--exclude=ffi_c\\.(bundle|so)$".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Ruby FFI".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14.1"])
  end
end
