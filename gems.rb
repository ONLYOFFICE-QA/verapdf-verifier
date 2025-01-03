# frozen_string_literal: true

source 'https://rubygems.org'

ruby '>= 3.4.0'

group :test do
  gem 'nokogiri'
  gem 'rack-test'
  gem 'rake'
  gem 'rspec'
  gem 'simplecov', require: false
end

group :development do
  gem 'overcommit', require: false
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'yard'
end

gem 'puma'
gem 'rackup'
gem 'sinatra'
