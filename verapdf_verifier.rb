# frozen_string_literal: true

require 'sinatra'
require_relative 'lib/verapdf_verifier'
verapdf = Verapdf.new

post '/payload' do
  tmp_file = Tempfile.new(['verapdf_tmp_file', '.pdf'])
  File.binwrite(tmp_file.path, params[:data])
  verapdf.file_data(tmp_file.path)
end
