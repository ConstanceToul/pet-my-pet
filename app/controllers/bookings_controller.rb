class BookingsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new
    @booking.pet = @pet
    @booking.user = current_user
    @booking.price = @pet.price
    @booking.status = "Confirmed"

    @booking.save
  end

end
