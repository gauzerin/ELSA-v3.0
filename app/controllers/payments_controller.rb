class PaymentsController < ApplicationController
  before_action :set_order

  def new
    # add logic
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    # description:  "Payment for teddy #{@booking.} for order #{@order.id}",
    currency:     @booking.amount.currency
  )

  # @booking.update(payment: charge.to_json, state: 'paid')  # ???
  # redirect_to order_path(@order)  # ???
  end

private

  # def set_order
  #   @booking = current_user.orders.where(state: 'pending').find(params[:booking_id])
  # end
end
