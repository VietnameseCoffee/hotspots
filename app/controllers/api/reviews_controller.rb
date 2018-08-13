class Api::ReviewsController < ApplicationController

  # no render methods applied

  def create
    debugger
    @review = Review.new(review_params)

    if @review.save
      render "api/reviews/show"
    else
      render json: @review.errors.full_messages, status: 401
    end
  end

  def update

  end

  def destroy

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
end
