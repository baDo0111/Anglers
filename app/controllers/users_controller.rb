class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  	@user = User.find(params[:id])
  	@fish = @user.fishs
  end

  def edit
  	@user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path(current_user)
    end
  end

  def update
  	if current_user
       @user = User.find(params[:id])
       if @user.update(user_params)
          redirect_to edit_user_path(@user.id), notice: 'ユーザー情報を更新しました。'
         else
          flash[:alert] = "ユーザー情報を更新できませんでした。"
          render "edit"
       end
     else
    end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :user_image, :introduction)
  end

end
