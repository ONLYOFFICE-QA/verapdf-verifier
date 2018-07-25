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
end
