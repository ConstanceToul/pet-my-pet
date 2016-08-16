class Owner::PetsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @pets = current_user.pets
  end

  def new
  end

  def create
    @pet.save
    redirect_to
  end
end
