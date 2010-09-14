# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-validator}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Felix Clack"]
  s.date = %q{2010-09-14}
  s.description = %q{A Rack app that runs Tidy on your html and prepends any errors to the response}
  s.email = %q{felixclack@gmail.com}
  s.extra_rdoc_files = ["lib/rack/tidy_response.rb", "lib/rack/validator.rb"]
  s.files = ["Gemfile", "Gemfile.lock", "Rakefile", "lib/rack/tidy_response.rb", "lib/rack/validator.rb", "readme.md", "test/rack_validator_test.rb", "test/test_helper.rb", "test/tidy_response_test.rb", "Manifest", "rack-validator.gemspec"]
  s.homepage = %q{http://github.com/kid80/rack-validator}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rack-validator", "--main", "readme.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rack-validator}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Rack app that runs Tidy on your html and prepends any errors to the response}
  s.test_files = ["test/rack_validator_test.rb", "test/test_helper.rb", "test/tidy_response_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
