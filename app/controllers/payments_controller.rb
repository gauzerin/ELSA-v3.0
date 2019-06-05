class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  skip_after_action :verify_authorized

  before_action :set_booking

  def new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )
    # @bookings.each do |b|
    #   @bed = Bed.find(b.beds.to_i)
    #   @hostel_n = bed.hostel.name
    #   @bed_count = beds.count.to_i
    # end

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for #{@bed_count} at the Hostel #{@hostel_n} for the booking #{@booking.id}",
    currency:     @booking.amount.currency
  )

  current_user.update(user_params)
  @booking.update(payment: charge.to_json, state: 'paid') # ???
  redirect_to user_dashboard_path, notice: "Booking failed"

    rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_booking_payment_path(@booking)
    # end
  end

private

  def set_booking
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
  end

  def user_params
    params.require(:user).permit(:first_name, :phone_number, :last_name)
  end
end
