require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(open(url).read)
    # render 'flats/index'
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(open(url).read)
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end
end
