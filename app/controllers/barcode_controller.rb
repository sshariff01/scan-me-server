require 'net/http'
require 'base64'

class BarcodeController < ApplicationController
  def index
    uri = URI.parse('https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=http%3A%2F%2F10.0.0.47%3A3000%2Flink%2Findex%3Ffb%3Dhttps%3A%2F%2Fwww.facebook.com%2Fshoabe.shariff%26ig%3Dhttps%3A%2F%2Finstagram.com%2Fshoabeshariff%26tw%3Dhttps%3A%2F%2Ftwitter.com%2Fsshariff01')
    request = Net::HTTP::Get.new(uri.request_uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(request)
    @qr_code = Base64.strict_encode64(response.body)
  end
end