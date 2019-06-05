class ApplicationController < ActionController::Base

  def index
    @places = Place.all
  end



end
