class MapsController < ApplicationController

def index
  maps = Map.all
  render json: maps
end

def show
  map = Map.find(params[:id])

  render json: map.data
end

end
