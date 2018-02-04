class LinkController < ApplicationController
  def index
    @links = [
        {
            :platform => 'facebook',
            :url => request.query_parameters[:fb]
        },
        {
            :platform => 'instagram',
            :url => request.query_parameters[:ig]
        },
        {
            :platform => 'twitter',
            :url => request.query_parameters[:tw]
        },
    ]
  end

  def new
    @user_id = params[:id]
  end

  def create
    social_media_link = SocialMediaLink.create(social_media_link_params)

    redirect_to "/barcode/#{social_media_link.user_id}"
  end

  private

  def social_media_link_params
    params.require(:social_media_link).permit(:user_id, :facebook_url, :instagram_url, :twitter_url)
  end
end