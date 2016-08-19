class Owner::PetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_pet, only: [:destroy, :edit, :update, :show]

  def index
    @pets = current_user.pets
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    @pet.address = current_user.address
    if @pet.save
      redirect_to owner_pets_path
    else
      render :new
    end
  end

  def destroy
    @pet.destroy
    redirect_to owner_pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to owner_pets_path
  end

  def show
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :title, :species, :gender, :birth_date,
     :height, :weight, :description, :food, :exercise, :price, :photo, :photo_cache)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
