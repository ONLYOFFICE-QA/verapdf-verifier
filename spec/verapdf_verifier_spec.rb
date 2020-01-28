# frozen_string_literal: true

require 'spec_helper'
require 'nokogiri'

describe Verapdf do
  let(:target) { last_response }

  describe 'send not pdf file' do
    before do
      post '/payload', data: File.read('spec/files/test_file.txt')
    end

    it_behaves_like 'correct response'
  end

  describe 'send pdf file' do
    before do
      post '/payload', data: File.read('spec/files/simple_pdf.pdf')
    end

    it_behaves_like 'correct response'
  end

  it 'check that temp file not exists after check' do
    post '/payload', data: File.read('spec/files/simple_pdf.pdf')
    xml = Nokogiri::XML(last_response.body)
    file_name = xml.xpath('//name').first.text
    expect(File).not_to exist(file_name)
  end
end
