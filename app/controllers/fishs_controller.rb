class FishsController < ApplicationController
before_action :authenticate_user!
before_action :ensure_correct_user, only:[:edit, :update, :destroy]

  def new
  end

  def index
  	@fishs = Fish.all
    @fish = Fish.new
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

  def create
    @fish = Fish.new(fish_params)
    @fish.user_id = current_user.id
    @fish.save
    redirect_to fishs_path
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to fishs_path
  end

  private

  def fish_params
    params.require(:fish).permit(:fishing_title, :fish_name, :fishing_contents,
      :fishing_date, :fish_size, :fish_weight, :prefectures, :fish_image)
  end

  def ensure_correct_user
    @fish = Fish.find(params[:id])
    unless @fish.user == current_user
      redirect_to fishs_path
    end
  end

end
