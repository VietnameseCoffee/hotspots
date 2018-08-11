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
    @business = Business.find_by(name: params[:business][:name])
    if @business
      render "api/businesses/show"
    else
      render "api/errors/fo-of-fo"
    end
  end

  private

  def business_params
    params.require(:business)
    .permit(
      :id
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