source 'http://rubygems.org'

gem 'rails', '~> 6.1.3'
gem 'mysql2'
gem 'prawn', '~> 0.5.0.1'
gem 'prawn-core', '~> 0.5.0.1', :require => 'prawn/core'
gem 'prawn-layout', '~> 0.2.0.1', :require => 'prawn/layout'
gem 'prawn-format', '~> 0.2.0.1', :require => 'prawn/format'
gem 'spreadsheet', '~> 0.6.5'
gem 'libxml-ruby', :require => 'libxml_ruby'
gem 'faker'
gem 'json'
gem 'rake', '<11'
gem 'jquery-rails'
gem 'therubyracer'
gem 'delayed_job_active_record'
gem 'daemons'
gem 'memcache-client'
gem 'puma', '~>5.2'
gem 'rb-readline'
gem 'rubyzip', '~> 1.0.0'
gem 'zip-zip' # Rubyzip old API compatibility addon

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 6.0.0'
  gem 'coffee-rails', '~> 5.0.0'
  gem 'uglifier', '>= 1.0.3'
end

#group :development do
#  gem 'ruby-debug19'
#end
group :test do
  gem 'flexmock', '= 0.9.0'
  gem 'machinist', '= 2.0'
  gem 'test-unit', '~> 1.2.3'
  # Use SimpleCov and Coveralls for test coverage reports
  gem 'simplecov'
  gem 'coveralls'
end

group :production do
  gem 'passenger'
  gem 'dalli'
end

group :test, :development do
  gem 'rspec_rails', '~> 2.0'
end
