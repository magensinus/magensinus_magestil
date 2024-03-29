# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'

# Ruby version
ruby "2.6.9"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.2.2"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 3.11"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "mini_racer", platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Load Mies Magensinus
gem "mies", "0.0.1.alpha", github: "magensinus/mies_magensinus"
# gem "mies", "0.0.1.alpha", path: "/Users/tonydefaria/Box Sync/iigethr/clients/magensinus/gems/mies_magensinus"

# Haml-rails provides Haml generators for Rails.
gem "haml-rails", "~> 1.0"

# Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file
gem "figaro", "~> 1.1"

# The Ruby cloud services library
gem "fog", "~> 1.42"

# Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
gem "carrierwave", "~> 1.2"

# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
gem "mini_magick", "~> 4.8"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

# A wrapper for MailChimp API 3.0 and Export API
gem "gibbon", github: "amro/gibbon"

# Drop-in plug-in for ActionMailer to send emails via Postmark
# gem "postmark-rails", "~> 0.19"
gem 'postmark-rails', '~> 0.21.0'

# Rack middleware for defining a canonical host name.
gem "rack-canonical-host"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "bullet"
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem "chromedriver-helper"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
