source 'https://rubygems.org'
# Ruby Version
ruby '2.4.1'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use Bootstrap
gem 'bootstrap', '~> 4.0.0.beta3'
# Hooks into will_paginate to format the html to match Twitter Bootstrap styling
gem 'bootstrap-will_paginate'
# will_paginate provides a simple API for performing paginated queries with
# Active Record, DataMapper and Sequel, and includes helpers for rendering
# pagination links in Rails, Sinatra and Merb web apps.
gem 'will_paginate', '~> 3.1.0'
# Use Jquery
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Sophisticated and secure hash algorithm
gem 'bcrypt', '~> 3.1.7'
# Extracting `assigns` and `assert_template` from ActionDispatch.
gem 'rails-controller-testing', '~> 0.0.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get
  # a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  # WebDriver is a tool for writing automated tests of websites.
  gem 'selenium-webdriver'
end

group :development do
  # Listens to file modifications and notifies you about the changes. 
  gem 'listen', '~> 3.1', '>= 3.1.5'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem 'web-console', '>= 3.3.0'
  # Preloads your application so things like console, rake and tests run faster
  gem 'spring'
  # Makes spring watch files using the listen gem.
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # Pg is the Ruby interface to the {PostgreSQL RDBMS}
  gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
