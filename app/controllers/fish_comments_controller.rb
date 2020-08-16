class FishCommentsController < ApplicationController

	def create
    @fish = Fish.find(params[:fish_id])
    @fish_new = Fish.new
    @fish_comment = @fish.fish_comments.new(fish_comment_params)
    @fish_comment.user_id = current_user.id
    if @fish_comment.save
      flash[:success] = "Comment was successfully created."
    else
      @fish_comments = FishComment.where(id: @fish)
    end
  end

  def destroy
    @fish_comment = FishComment.find(params[:fish_id])
    @fish = @fish_comment.fish
    if @fish_comment.user != current_user
      redirect_to request.referer
    end
    @fish_comment.destroy
  end

  private

  def fish_comment_params
    params.require(:fish_comment).permit(:comment)
  end
end
