# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
end

require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../verapdf_verifier.rb', __dir__

# Module to setup rack test in sinatra
module RSpecMixin
  include Rack::Test::Methods

  # @return [Sinatra::Application] this application
  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }

shared_examples 'correct response' do
  it 'last_response is ok' do
    expect(target).to be_ok
  end

  it 'last_response.body without errors' do
    xml = Nokogiri::XML(target.body)
    expect(xml.errors).to be_empty
  end
end
