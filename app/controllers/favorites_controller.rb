class FavoritesController < ApplicationController
  def create
  	@fish = Fish.find(params[:fish_id])
  	favorite = @fish.favorites.new(user_id: current_user.id)
  	favorite.save
  end

  def destroy
  	@fish = Fish.find(params[:fish_id])
  	favorite = current_user.favorites.find_by(fish_id: @fish.id)
  	favorite.destroy
  end
end
