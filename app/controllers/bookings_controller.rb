class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def new
    @Bed = Bed.find(params[:bed_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user # this sets booking.user to current user, this means the booking in the future will be avialable only to user who created it
    @bed = Bed.find(params[:bed_id])
    @bed.hostel = @bed
    authorize @booking
    if @booking.save
      redirect_to checkout_path, notice: "Booking successfully created"
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id]) # this is a show booking details page
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    @booking.user = current_user # this sets booking.user to current user, this means the booking in the future will be avialable only to user who created it
    @booking.save
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: "Booking successfully updated"
    else
      render :edit
    end
  end

  def cancel_booking # this is a destroy function meant for booking cancelations
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.destroy
      redirect_to bookings_path, notice: 'Booking was successfully cancelled'
    else
      render :index
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :total_cost)
  end
end
