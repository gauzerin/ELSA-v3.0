class PaymentsController < ApplicationController
  before_action :set_order

  def new
    # add logic
  end

  def create
    # add logic
  end

private

  def set_order
    @booking = current_user.orders.where(state: 'pending').find(params[:booking_id])
  end
end
