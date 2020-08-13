class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@fish = @user.fishs
  end

  def edit
  end
end
