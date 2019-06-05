class UsersController < ApplicationController

  def trips
    @bookings = Booking.where(user: current_user)
    authorize @bookings
    # @beds = bookings.select {|bed| bed.hostel_id }
  end

private

  def check_authorization
    authorize :user
  end
end
