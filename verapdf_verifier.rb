require 'sinatra'
require_relative 'helpers/app_helper.rb'

include AppHelper

post '/payload' do
  tmp_file = Tempfile.new(['verapdf_tmp_file', '.pdf'])
  File.open(tmp_file.path, 'wb') do |f|
    f.write(params[:data])
  end
  get_verapdf_data(tmp_file.path)
end
