class MuseumsController < ApplicationController
  require "json"
  require "rest-client"

  def get_museums
    url

  end
  def index
    Museum.all

  end
end
