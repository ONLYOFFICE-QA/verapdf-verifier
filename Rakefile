# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Perform check if local server running ok'
task :check do
  uri = URI.parse('http://localhost/payload')
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new(uri.request_uri)
  post_data = URI.encode_www_form({ data: File.read('spec/files/simple_pdf.pdf') })
  puts(http.request(request, post_data).body)
end
