source "https://rubygems.org"

ruby "3.1.3"

gem "rails", "~> 6.1.7.8"  # Use a versão 6.1.7.8 para compatibilidade
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem 'devise', '~> 4.9', '>= 4.9.4'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'image_processing', '~> 1.2'
gem 'active_storage_validations'
gem 'mimemagic', '~> 0.3.10'
gem 'paperclip', '~> 6.1.0'
gem 'aws-sdk-s3', require: false

gem 'dotenv-rails', groups: [:development, :test]



group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'rspec-rails', '~> 5.0'
end
