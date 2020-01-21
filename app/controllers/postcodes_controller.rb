class PostcodesController < ApplicationController
  def index
    postcodes = Postcode.all.map { |code|
      {
        postcode: code.data["Postcode"],
        ave_rent: code.data["Average rent"].to_s.gsub(",", "").to_i,
        ave_price: code.data["Average £/sqft"].to_s.gsub(",", "").to_i,
        ave_yield: code.data["Average yield"],
        crime_rate: code.data["Crime rate"].to_s.gsub(",", "").to_i,
        education: code.data["Degree educated"].to_s.gsub(",", "").to_i,
        social_grade: code.data["Social grade AB"].to_s.gsub(",", "").to_i,
        average_bedrooms: code.data["Average bedrooms"].to_s.gsub(",", "").to_f,
        availability: code.data["Sales per month"].to_s.gsub(",", "").to_i,
        population: code.data["Population"].to_s.gsub(",", "").to_i,
      }
    }

    render json: postcodes
  end

  def show
    postcode = Postcode.find(params[:id])

    render json: postcode
  end
end
