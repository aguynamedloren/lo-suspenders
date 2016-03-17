# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'suspenders/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Suspenders::RUBY_VERSION}"
  s.authors = ['thoughtbot', 'aguynamedloren']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
A fork of the thoughbot suspenders gem.
  HERE

  s.email = 'lorendburton@gmail.com'
  s.executables = ['lo-suspenders']
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'http://github.com/aguynamedloren/lo-suspenders'
  s.license = 'MIT'
  s.name = 'lo-suspenders'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app with a whole bunch of defaults."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Suspenders::VERSION

  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Suspenders::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'simple_form', '~> 3.2'
  s.add_development_dependency 'quiet_assets', '~> 1.1'
  s.add_development_dependency 'capybara-webkit', '~> 1.8'
end
