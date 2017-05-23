source 'https://rubygems.org'

ruby "2.2.0"

# Rails
gem 'rails', '4.2.2'
# Server
gem 'newrelic_rpm'
gem 'puma'
# Database
group :production do
	gem 'pg'
end
# Models
gem 'devise'
gem 'paperclip', "~> 4.1"
gem "aws-sdk", '< 2.0'
# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'jquery-rails'
gem "font-awesome-rails"
gem "jquery-slick-rails"
gem "angularjs-rails"
gem "lodash-rails"
gem 'angular-rails-templates'
# Production
gem "rails_12factor"
# Miscellaneous
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem "byebug"
  gem "sqlite3"
  gem "better_errors"
  gem "quiet_assets"
  gem 'binding_of_caller'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

