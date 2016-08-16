class Owner::PetsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @pets = current_user.pets
  end
end
