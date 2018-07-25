# Methods to help
module AppHelper
  # @param file [String] path to file
  # @return [String, JSON] result of parsing in verapdf
  def get_verapdf_data(file)
    `/opt/verapdf/verapdf #{file}`
  end
end
