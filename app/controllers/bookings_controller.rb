class BookingsController < ApplicationController
   before_action :set_booking, only: [:edit, :destroy, :show]

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new
    @booking.pet = @pet
    @booking.user = current_user
    @booking.price = @pet.price
    @booking.status = "Confirmed"

    @booking.save
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def edit
    @booking.status = "Cancelled"
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking.delete
    redirect_to bookings_path
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
