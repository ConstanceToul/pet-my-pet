class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @species = params[:pet][:species]
    @address = params[:pet][:address]
    @pets = Pet.all.where(species: @species, address: @address)
  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new(pet: @pet, user: current_user)
  end

end
