class PostcodesController < ApplicationController
  def index
    postcodes = Postcode.all

    render json: postcodes
  end

  def show
    postcode = Postcode.find(params[:id])

    render json: postcode
  end
end
