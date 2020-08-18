class FishsController < ApplicationController
  def index
  	@fishs = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
    @fish_comment = FishComment.new
    @fish_comments = @fish.fish_comments
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    @fish.update(fish_params)
    redirect_to @fish
  end

  def new
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to fishs_path
  end

  private

  def fish_params
    params.require(:fish).permit(:fishing_title, :fish_name, :fishing_contents,
      :fishing_date, :fish_size, :fish_weight, :prefectures,
      :fish_image)
  end

end
