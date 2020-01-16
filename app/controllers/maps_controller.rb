class MapsController < ApplicationController
  def index
    if params[:name]
      map = Map.find_by name: params[:name]
      render json: map
    else
      maps = Map.all
      render json: maps
    end
  end

end
