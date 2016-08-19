class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:pet][:species].present? && params[:pet][:address].present?
      @species = params[:pet][:species]
      @address = (params[:pet][:address]).capitalize

      @pets = Pet.where(species: @species, address: @address)
      if current_user
        @user = current_user
        @pets = @pets.select{ |pet| pet.user_id != @user.id}
      end
      if @pets.length > 0
        @message = "Showing #{@species}s in #{@address}"
      else
        @message = "Sorry, there are currently no #{@species}s available in #{@address}."
      end

    elsif params[:pet][:species].present? && params[:pet][:address].blank?
      @species = params[:pet][:species]
      @pets = Pet.where(species: @species)
      if current_user
        @user = current_user
        @pets = @pets.select{ |pet| pet.user_id != @user.id}
      end
      if @pets.length > 0
        @message = "Showing all #{@species}s"
      else
        @message = "Sorry, there are currently no #{@species}s available."
      end
    elsif params[:pet][:species].blank? && params[:pet][:address].present?
      @address = (params[:pet][:address]).capitalize
      @pets = Pet.where(address: @address)
      if current_user
        @user = current_user
        @pets = @pets.select{ |pet| pet.user_id != @user.id}
      end
      if @pets.length > 0
        @message = "Showing all pets in #{@address}"
      else
        @message = "Sorry, there are currently no pets available in #{@address}."
      end
    elsif params[:pet][:species].blank? && params[:pet][:address].blank?
      @pets = Pet.all

      if current_user
        @user = current_user
        @pets = @pets.select{ |pet| pet.user_id != @user.id}
      end
      if @pets.length > 0
        @message = "Showing all pets"
      else
        @message = "Sorry, there are currently no pets available."
      end
    end

  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new(pet: @pet, user: current_user)
  end

end
