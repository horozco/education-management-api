source 'https://rubygems.org'

gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'pg'
gem 'rails', '4.1.1'
gem 'rails_admin'
gem 'sass-rails', '~> 4.0.3'
gem 'spring'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem "database_cleaner"
  gem "factory_girl_rails", "~> 4.3.0"
  gem "mocha", "~> 1.0.0"
  gem "pry", "~> 0.9.12"
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'webmock', '< 1.14.0', require: false
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'brakeman', require: false
  gem 'fakeredis', require: "fakeredis/rspec"
  gem 'resque_spec'
  gem 'shoulda-matchers', '~> 2.6.1'
end
