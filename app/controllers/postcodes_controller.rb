class PostcodesController < ApplicationController
  def index
    postcodes = Postcode.all.map { |code| { 
      postcode: code.data["Postcode"],
      ave_rent: code.data["Average rent"],
      ave_price: code.data["Average £/sqft"],
      ave_yield: code.data["Average yield"]
      } }

    render json: postcodes
  end

  def show
    postcode = Postcode.find(params[:id])

    render json: postcode
  end
end
