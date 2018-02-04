require 'net/http'
require 'base64'

class BarcodeController < ApplicationController
  def show
    if !social_media_link.present?
      @user = User.find_by_id(params[:id])
      return
    end

    uri = URI.parse("https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=#{links_url}")
    request = Net::HTTP::Get.new(uri.request_uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(request)
    @qr_code = Base64.strict_encode64(response.body)
  end

  private

  def social_media_link
    @social_media_link ||= SocialMediaLink.find_by_user_id(params[:id])
    @social_media_link
  end

  def links_url
    "http://10.0.0.47:3000?fb=#{social_media_link.facebook_url}&ig=#{social_media_link.instagram_url}&tw=#{social_media_link.twitter_url}"
  end
end