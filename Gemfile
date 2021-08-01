source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in aact_form_engine.gemspec.
gemspec

group :development do
  gem 'pg'
  gem 'puma'
end

group :development, :test do
  gem 'byebug'
  gem 'factory_bot_rails'
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false
end
