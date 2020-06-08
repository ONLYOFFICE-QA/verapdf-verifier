# frozen_string_literal: true

source 'https://rubygems.org'

group :test do
  gem 'codecov', require: false
  gem 'nokogiri'
  gem 'rack-test'
  gem 'rake'
  gem 'rspec'
end

group :development do
  gem 'overcommit', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'yard'
end

gem 'puma'
gem 'sinatra'
