ruby '2.1.0'

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Front-end candy
gem 'twitter-bootstrap-rails', git: 'https://github.com/seyhunak/twitter-bootstrap-rails.git', branch: 'bootstrap3'
gem 'bootstrap-sass'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Popovers would not work without this
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Code Coverage Badge
gem 'coveralls', require: false

# Authentication and User management
gem 'devise'

# Generate test viewing material
gem 'seed_dump'

# Paginate the posts
gem 'will_paginate', '~> 3.0'
gem 'will_paginate-bootstrap'

# Make Navigation Bar generation a cinch
gem 'simple-navigation'
gem 'simple_navigation_renderers'

# Commenting
gem 'acts_as_commentable_with_threading'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'pry-rails'
  # Enables attaching to a debug session remotely, fixes the problem with running binding.pry calls in rails server with foreman
  gem 'pry-remote'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-rubocop'
  gem 'foreman'
  gem 'rails_layout'
  gem 'better_errors'
  gem 'rubocop', require: false
end

group :staging, :production do
  # Use PostgreSQL in Heroku instances
  gem 'pg'
  gem 'rails_12factor'
end

group :test, :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
end

group :test, :staging do
  gem 'fabrication-rails'
end

group :test, :development, :staging do
  # Generate test data for the specs and the staging app
  gem 'faker'
  # Add one-liner matchers for RSpec
  gem 'shoulda-matchers'
end


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
