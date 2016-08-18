class Renter::BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :destroy]
  def index
    @bookings = current_user.bookings
  end

  def edit
    @booking.status = "Cancelled"
    @booking.save

    redirect_to renter_bookings_path(current_user)
  end

  def destroy
    @booking.delete

    redirect_to renter_bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
