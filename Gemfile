source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

group :development, :test do
  gem "brakeman", "~> 2.2.0"
  gem "database_cleaner", git: 'https://github.com/bmabey/database_cleaner.git'
  gem "factory_girl_rails", "~> 4.3.0"
  gem "mocha", "~> 1.0.0"
  gem "pry", "~> 0.9.12"
  gem "rspec", "~> 2.14.1"
  gem 'rspec-rails', '~> 2.14'
  gem "shoulda-matchers", "~> 2.4.0"
  gem 'simplecov', require: false
  gem 'timecop', "~> 0.7.1"
  gem 'webmock', '< 1.14.0', require: false
  #gem 'rapidoc', git: "https://#{ENV['GITHUB_TOKEN']}:x-oauth-basic@github.com/koombea/rapidoc.git"
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem "fakeredis", :require => "fakeredis/rspec"
  gem 'resque_spec'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

