require "pry-byebug"

class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  # def new
  #   @Bed = Bed.find(params[:bed_id])
  #   @booking = Booking.new
  # end

  def create
    booking_params
    @booking = Booking.new(@attributes)
    @booking.user = current_user # this sets booking.user to current user, this means the booking in the future will be avialable only to user who created it

    authorize @booking
      if @booking.save
        redirect_to hostel_path(@hostel.id), notice: "Booking successfully created"
      else
        redirect_to hostel_path(@hostel.id), notice: "Booking failed"
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
    params.require(:booking).permit(:start_at, :end_at, :hostel_id, other: [:room_type, :bed_number])
    @attributes = {}
    @attributes[:start_at] = Date.parse(params[:booking][:start_at])
    @attributes[:end_at] = Date.parse(params[:booking][:end_at])
    @attributes[:beds] = select_beds
    @attributes[:total_cost] = calculate_cost
    @attributes[:beds] = map_beds_to_ids(@attributes[:beds])
    @attributes
  end

  def select_beds
    @hostel = Hostel.find(params[:booking][:hostel_id].to_i)

    unavailable_bookings = []
    @hostel.beds.each do |bed|
      unavailable_bookings << bed.bookings
    end

    unavailable_bookings.flatten!

    booked_date_range = @attributes[:start_at]..@attributes[:end_at]
    # booked_date_range = params[:start_at]..params[:end_at] # cuz attributes didnt work



    unavailable_bookings.select! {|booking| (booked_date_range === booking.start_at)}
    unavailable_beds_ids = []
    unavailable_beds_ids = unavailable_bookings.map {|booking| booking.beds.map {|bed| bed.to_i}}

    if unavailable_beds_ids == []
    else
      unavailable_beds_ids.flatten!
    end

    available_beds = @hostel.beds.select {|bed| !unavailable_beds_ids.include?(bed.id)}

    #ccalculate date range from attributes start_at and end_at
    # @hostel.beds.select {|bed| #check if bed.bookings.start_at falls inside date range
    available_beds.select {|bed| bed.room_type == params[:booking][:other][:room_type]}
    .first(params[:booking][:other][:bed_number].to_i)
  end

  def map_beds_to_ids(beds)
    beds.map {|bed| bed.id}
  end

  def calculate_cost
    number_of_dates = (@attributes[:end_at] - @attributes[:start_at]).to_i
    if @attributes[:beds] == []
      sum_of_prices = 0
    else
      sum_of_prices = @attributes[:beds].map{ |bed| bed.price}.inject(:+)
    end
    final_sum = (number_of_dates * sum_of_prices).to_f
  end
end
