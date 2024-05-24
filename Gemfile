# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3', '>= 7.1.3.3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem 'rack-cors'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]

  # For testing
  gem 'factory_bot_rails', '~> 6.4'
  gem 'rspec-rails', '~> 6.1'
  gem 'shoulda-matchers', '~> 6.2'

  # Linter
  gem 'rubocop-rails', '~> 2.25'
  gem 'rubocop-rspec', '~> 2.29'
  gem 'rubocop-rspec_rails', '~> 2.28'
  gem 'rubocop-factory_bot', '~> 2.25'

  # Annotations
  gem "annotate", "~> 3.2"
end

