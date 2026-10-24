
source "https://rubygems.org"

# Rails
gem "rails", "~> 8.1.4"

# Asset pipeline
# gem "propshaft"
gem "sprockets-rails"
gem "sassc-rails"

# Database
gem "sqlite3", ">= 2.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript and Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON
gem "jbuilder"

# Windows timezone support
gem "tzinfo-data", platforms: %i[windows jruby]

# Background jobs, caching, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Boot performance
gem "bootsnap", require: false

# Deployment
gem "kamal", require: false
gem "thruster", require: false

# Customer images
gem "image_processing", "~> 2.2"

# Customer Relation Manager
gem "activeadmin", "~> 3.5"
gem "devise"

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
