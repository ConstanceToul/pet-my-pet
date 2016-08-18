class BookingsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(pet_id: @pet, user_id: current_user)
  end

end
