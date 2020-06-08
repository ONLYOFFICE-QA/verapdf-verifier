# frozen_string_literal: true

source 'https://rubygems.org'

group :test do
  gem 'codecov', require: false
  gem 'nokogiri'
  gem 'rake'
  gem 'rack-test'
  gem 'rspec'
end

group :development do
  gem 'overcommit', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end

gem 'puma'
gem 'sinatra'
