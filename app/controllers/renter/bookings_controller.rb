class Renter::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def edit

    @booking = Booking.find(params[:id])
    @booking.status = "Cancelled"
    @booking.save

    redirect_to renter_bookings_path(current_user)
  end

end
