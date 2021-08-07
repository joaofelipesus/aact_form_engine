# frozen_string_literal: treu

require_relative 'lib/aact_form_engine/version'

Gem::Specification.new do |spec|
  spec.name        = 'aact_form_engine'
  spec.version     = AactFormEngine::VERSION
  spec.authors     = ['João Felipe Lopes de Sus', 'André Gonsalves da Silva']
  spec.email       = ['joaofelipe1294@gmail.com']
  spec.homepage    = 'https://github.com/joaofelipesus/aact_form_engine'
  spec.summary     = 'Adds model, controller and views used as base to develop simple form apps.'
  spec.description = 'Rails engine used as base to form based simple apps.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/joaofelipesus/aact_form_engine'
  spec.metadata['changelog_uri'] = 'https://github.com/joaofelipesus/aact_form_engine'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 6.1.4'
  spec.add_development_dependency 'rspec-rails'
  spec.add_dependency 'devise'
end
