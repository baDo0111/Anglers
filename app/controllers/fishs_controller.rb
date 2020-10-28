class FishsController < ApplicationController
before_action :authenticate_user!, only:[:edit, :create, :update, :destroy]
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
    if @fish.user_id = current_user.id
      @fish.update(fish_params)
      redirect_to fishs_path
      flash[:notice] = "投稿を更新しました。"
    else
      redirect_to fishs_path
      flash[:alert] = "投稿の更新に失敗しました。"
    end
  end

  def create
    @fish = Fish.new(fish_params)
    if @fish.user_id = current_user.id
      @fish.save
      redirect_to fishs_path
      flash[:notice] = "正しく投稿することが出来ました。"
    else
      redirect_to fishs_path
      flash[:alert] = "投稿できませんでした。"
    end
  end

  def destroy
    @fish = Fish.find(params[:id])
    if @fish.user_id = current_user.id
      @fish.destroy
      redirect_to fishs_path
      flash[:notice] = "投稿を削除しました。"
    else
      redirect_to fishs_path
      flash[:alert] = "投稿の削除に失敗しました。"
    end
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
