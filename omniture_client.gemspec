# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniture_client/version'

Gem::Specification.new do |s|
  s.name = %q{omniture_client}
  s.version = OmnitureClient::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexandru Catighera"]
  s.date = %q{2010-01-12}
  s.email = %q{alex@patch.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  # s.files = [
  #   ".gitignore",
  #    "MIT-LICENSE",
  #    "README.markdown",
  #    "Rakefile",
  #    "VERSION",
  #    "Gemfile",
  #    "lib/omniture_client.rb",
  #    "lib/action_controller_methods.rb",
  #    "lib/omniture_client/base.rb",
  #    "lib/omniture_client/controller_methods.rb",
  #    "lib/omniture_client/meta_var.rb",
  #    "lib/omniture_client/printer.rb",
  #    "lib/omniture_client/var.rb",
  #    #{}"lib/rails.rb",
  #    "omniture_client.gemspec",
  #    "sample/omniture.yml"
  # ]
  s.files = `git ls-files`.split($/)
  s.homepage = %q{http://github.com/acatighera/omniture_client}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A gem for implementing Omniture for web apps that use Rails, Sinatra, etc}
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

