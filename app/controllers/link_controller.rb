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
end