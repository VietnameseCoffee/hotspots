class Api::BusinessesController < ApplicationController

  # no render methods applied

  def create
    @business = Business.new(business_params)

    if @business.save
      # ADD DEFAULT HOURS AND BUSINESS INFO CUZ DEPENDENCIES OR MAKE AN ELSE STATEMENT IN RENDER
      render "api/businesses/show"
    else
      render json: @business.errors.full_messages , status: 401
    end
  end

  def show

    @business = Business.includes(:categories, :hour, :business_info, :images, reviews: [:user])
      .where(id: params[:business][:id])
      .references(:categories, :hour, :business_info, :reviews)


    if @business.length == 1
      @business.each do |biz|
        @categories = biz.categories.pluck(:category)
        @hours = biz.hour.to_arr ## if ? .to_arr : DEFAULT
        @info = biz.business_info.to_arr ## IF ? .to_arr : DEFAULT
        @reviews = biz.reviews.reverse
        @users = @reviews.map {|rev| rev.user}
        @images = biz.images
      end
      @business = @business[0]
      render "api/businesses/show"
    else
      render "api/errors/fo_o_fo"
    end
  end

  def index
    @hotspots = []
    @businesses = Business.where("stars > ?", 3.79).shuffle[0..5]
    @businesses.each {|biz| @hotspots.push(biz.id)}
    render "api/businesses/index"
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

  def extract_photos
    photos = []
  end
end
