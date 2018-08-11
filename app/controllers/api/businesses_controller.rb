class Api::BusinessesController < ApplicationController

  # no render methods applied

  def create
    @business = Business.new(business_params)

    if @business.save
      render "api/businesses/show"
    else
      render json: @business.errors.full_messages , status: 401
    end
  end

  def show
    @business = Business.find(params[:business][:id])
    if @business
      render "api/businesses/show"
    else
      render "api/errors/fo_o_fo"
    end
  end

  def index
    # result = []
    @business = Business.find_by(name: params[:search][:input])
    # if find add to array, then look for tags of the first result
    # pick a tag and search via tag for similar flavor restaurants

  end

  private

  def business_params
    params.require(:business)
    .permit(
      :id,
      :name,
      :latitude,
      :longitude,
      :address,
      :city,
      :state,
      :zip,
      :stars,
      :price
    )
  end
end
