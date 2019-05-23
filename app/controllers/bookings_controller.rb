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
    @booking.user = current_user
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
    @booking.user = current_user
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

  def destroy
    authorize @booking
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to bookings_path, notice: 'Hostel was succesfully removed'
    else
      render :index
    end
  end

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
