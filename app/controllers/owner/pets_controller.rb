class Owner::PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def index
    @pets = current_user.pets
  end

  def new
    #@species = ["ostrich", "monkey", "dog", "cat", "goat", "rabbit", "hamster", "snake", "rat", "mouse", "chameleon", "swan", "elephant", "pelican", "bird", "tortoise", "gnu", "otter", "pig", "parrot", "lion"]
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    raise
    if @pet.save
      redirect_to owner_pets_path
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :title, :species, :gender, :birth_date,
     :height, :weight, :picture_url, :description, :food, :exercise, :price, :photo, :photo_cache)
  end

end
