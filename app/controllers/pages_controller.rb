class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @current_user = current_user
    #params.require(:product).permit(:first_name, :last_name, :address, :photo, :photo_cache)
  end
end
