source 'http://rubygems.org'
ruby "2.6.1"

gem 'sinatra'
gem 'activerecord', '~> 5.2', '>= 5.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'
gem 'rack-flash3'
gem 'dotenv'
gem 'foreman'

group :development do
  gem 'sqlite3'
  gem 'shotgun'
  gem 'pry'
  gem 'tux'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
end