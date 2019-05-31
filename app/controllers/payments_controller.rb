class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  skip_after_action :verify_authorized

  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )
    bookings.each do |b|
      @bed = Bed.find(b.beds.to_i)
      @hostel_n = bed.hostel.name
      @bed_count = beds.count.to_i
    end

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for #{@bed_count} at the Hostel #{@hostel_n} for the booking #{@booking.id}",
    currency:     @booking.amount.currency
  )


  @booking.update(payment: charge.to_json, state: 'paid') # ???
  redirect_to booking_path(@booking)  # ???


    rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_booking_payment_path(@booking)
    # end
  end

private

  def set_order
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
  end
end
