class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @hostel = Hostel.find(params[:hostel_id])
    @review = Review.new(hostel: @hostel)
    authorize @review
  end

  def create
    @review = Review.new(emoji: params[:emoji], hostel_id: params[:hostel_id], user: current_user)
    @hostel = Hostel.find(params[:hostel_id])
    @review.save
    # redirect_to user_dashboard_path(@_____)
    authorize @review
    redirect_to user_dashboard_path(@review.user)
    # (@review.hostel)
  end

  def review_params
    params.require(:review).permit(:emoji)
  end

end
