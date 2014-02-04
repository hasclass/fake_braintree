# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'fake_braintree/version'

Gem::Specification.new do |s|
  s.name        = 'fake_braintree'
  s.version     = FakeBraintree::VERSION
  s.authors     = ['thoughtbot, inc.']
  s.email       = ['gabe@thoughtbot.com', 'ben@thoughtbot.com']
  s.homepage    = ''
  s.summary     = %q{A fake Braintree that you can run integration tests against}
  s.description = %q{A fake Braintree that you can run integration tests against}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")

  s.add_dependency 'capybara'
  s.add_dependency 'activesupport'
  s.add_dependency 'i18n'
  s.add_dependency 'sinatra'
  s.add_dependency 'braintree', '~> 2.5'
  s.add_dependency 'puma'

  s.add_development_dependency 'rspec', '~> 2.12.0'
  # Capybara 2.1.0 requires 1.9.3+ so we install a version that works with
  # every Ruby version we test against. This can be removed if we stop testing
  # against 1.9.2.
  s.add_development_dependency 'capybara', '~> 2.0.3'
  s.add_development_dependency 'bourne', '~> 1.3'
  s.add_development_dependency 'timecop', '~> 0.6'
  s.add_development_dependency 'rake'
end
