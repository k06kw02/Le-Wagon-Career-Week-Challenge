class MuseumsController < ApplicationController
  require "json"
  require "rest-client"

  def get_museums
    url = 'https://api.mapbox.com/places?access_token=#{MAPBOX_API_KEY}'
    response = RestClient.get(url)
    render json: response
  end

  def index
     if params[:query].present?
      @museum = Museum.where(latitude: params[:query], longitude: params[:query] )
    else
      @museum = museum.all
    end

  end
end
