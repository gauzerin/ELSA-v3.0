class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def user_dashboard
   @total_cashback = total_cashback
   @bookings = Booking.where(user: current_user)
   @markers = @bookings.map do |booking|
    {
      lat: Bed.find(booking.beds.first).hostel.latitude,
      lng: Bed.find(booking.beds.first).hostel.longitude,
      infoWindow: render_to_string(partial: "hostel", locals: { hostel: Bed.find(booking.beds.first).hostel })
    }
   end
  end

  private




  def total_cashback
    arr_cashback_for_each_booking = []
      sum = 0.0
      if current_user.bookings
        current_user.bookings.each do |booking|
          sum += booking.cashback unless booking.cashback.nil?
        end
      end
      arr_cashback_for_each_booking << sum
  arr_cashback_for_each_booking.reduce(0) { |sum, num| sum + num }
    end
  end

