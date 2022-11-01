source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Linters
gem 'rubocop', '>= 1.0', '< 2.0'

# Add Devise JWT - https://github.com/waiting-for-dev/devise-jwt
gem 'devise-jwt'

# Add Rack CORS - https://github.com/cyu/rack-cors
gem 'rack-cors'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# https://github.com/heartcombo/devise
gem 'devise', github: 'heartcombo/devise', branch: 'main'

gem 'cancancan'

gem 'dotenv-rails'

gem 'ffi'

gem 'rswag'

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
gem 'fast_jsonapi'

# Rspec
gem 'rspec-rails'

# Validations

gem 'validate_url'

gem 'faraday'

gem 'date_validator'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # https://github.com/thoughtbot/factory_bot/tree/master
  gem 'factory_bot_rails'

  # https://github.com/flyerhzm/bullet
  gem 'bullet'

  # https://github.com/teamcapybara/capybara
  gem 'capybara'

  # https://github.com/titusfortner/webdrivers
  gem 'webdrivers', '~> 5.0'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Code coverage
  # https://github.com/colszowka/simplecov
  gem 'simplecov', require: false
end
