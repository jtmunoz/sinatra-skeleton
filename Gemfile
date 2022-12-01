source 'https://rubygems.org'

ruby '2.6.3'

# PostgreSQL driver
gem 'pg', '~> 0.20.0'

# Sinatra driver
gem 'sinatra', '~> 3.0'
gem 'sinatra-contrib'

gem 'activesupport', '~>4.2'
gem 'activerecord', '~>4.2'

gem 'rake'

gem 'shotgun'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
  gem 'capybara'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
  gem 'database_cleaner'
end

gem 'puma'