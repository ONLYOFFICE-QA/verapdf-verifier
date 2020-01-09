# frozen_string_literal: true

# Class for work with verapdf
class Verapdf
  def initialize
    @exe = '/opt/verapdf/verapdf'
  end

  # @param file [String] path to file
  # @return [String, JSON] result of parsing in verapdf
  def file_data(file)
    data = `#{@exe} #{file}`
    FileUtils.rm(file)
    data
  end
end
