class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    review.save
    # redirect_to user_dashboard_path(@_____)
    render :new
  end

  def review_params
    params.require(:review).permit(:emoji)
  end

end
