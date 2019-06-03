class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new(hostel: Hostel.find(params[:hostel_id]))
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.hostel = Hostel.find(params[:hostel_id])
    review.save
    # redirect_to user_dashboard_path(@_____)
    authorize @review
    redirect_to hostel_path(@review.hostel)
  end

  def review_params
    params.require(:review).permit(:emoji)
  end

end
