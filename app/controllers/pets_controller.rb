class Owner::PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create]

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to home_path
  end

  private

  def pet_params
  params.require(:pet).permit(:name, :title, :gender, :species, :birth_date, :height, :weight, :description, :food, :exercise, :photo, :photo_cache, :price)
  end

end
