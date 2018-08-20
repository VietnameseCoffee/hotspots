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
    # NEED refactor, does it requery again after includes, supa slow?
    # SUPER FRAGILE RNß
    @business = Business.includes(:categories, :hour, :business_info, :reviews).where(id: params[:business][:id])[0]
    if @business
      @categories = @business.categories.pluck(:category)
      @hours = @business.hour.to_arr ## if ? .to_arr : DEFAULT
      @info = @business.business_info.to_arr ## IF ? .to_arr : DEFAULT
      @reviews = @business.reviews.reverse
      @users = @reviews.map {|rev| rev.user}
      @photos = @business.review_photos.shuffle[0..2]

      render "api/businesses/show"
    else
      render "api/errors/fo_o_fo"
    end
  end

  def index
    @hotspots = []
    @businesses = Business.where("stars > ?", 3.79).shuffle[0..5]
    @businesses.each do {|biz| @hotspots.push(biz.id)}
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
