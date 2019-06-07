# frozen_string_literal: true

require 'spec_helper'
require 'nokogiri'

describe 'My Sinatra Application' do
  it 'send not pdf file correct return' do
    post '/payload', data: File.read('spec/files/test_file.txt')
    expect(last_response).to be_ok
    xml = Nokogiri::XML(last_response.body)
    expect(xml.errors).to be_empty
  end

  it 'send pdf file content return correct data' do
    post '/payload', data: File.read('spec/files/simple_pdf.pdf')
    expect(last_response).to be_ok
    xml = Nokogiri::XML(last_response.body)
    expect(xml.errors).to be_empty
  end

  it 'check that temp file not exists after check' do
    post '/payload', data: File.read('spec/files/simple_pdf.pdf')
    xml = Nokogiri::XML(last_response.body)
    file_name = xml.xpath('//name').first.text
    expect(File.exist?(file_name)).to be_falsey
  end
end
