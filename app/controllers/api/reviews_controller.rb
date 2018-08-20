class Api::ReviewsController < ApplicationController

  # no render methods applied

  def create
    @review = Review.new(review_params)
    if @review.save
      debugger
      update_stars(Business.find(@review.business_id))

      render "api/reviews/show"
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def update
    @review = Review.find(params[:review][:id])
    if @review
      if @review.update_attributes(review_params)
        render "api/reviews/show"
      else
        render json: @review.errors.full_messages, status: 422
      end
    else
      render json: ["this review doesn't exist"], status: 404
    end
  end

  def destroy

    @review = Review.find(params[:id])
    if @review
      @review.destroy
      render "api/reviews/show"
    else
      render json: ["This review doesn't exist"], status: 404
    end
  end

  def index

  end

  private

  def review_params
    params.require(:review)
    .permit(
      :id,
      :business_id,
      :user_id,
      :stars,
      :text,
      :post_date
    )
  end

  def update_stars(business)
    debugger
    num_reviews = business.reviews.length
    total_stars = ((num_reviews - 1) * business.stars) + @review.stars
    business.stars = total_stars / num_reviews
    business.save
    return "lol"
  end
end
