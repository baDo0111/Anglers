class FavoritesController < ApplicationController
  def create
  	@fish = Fish.find(params[:fish_id])
  	favorite = current_user.favorites.build(fish_id: params[:fish_id])
  	favorite.save
  end

  def destroy
  	@fish = Fish.find(params[:fish_id])
  	favorite = Favorite.find_by(fish_id: params[:fish_id], user_id: current_user.id)
  	favorite.destroy
  end
end
