class FishCommentsController < ApplicationController

	def create
    @fish = Fish.find(params[:fish_id])
    @fish_new = Fish.new
    @fish_comment = @fish.fish_comments.new(fish_comment_params)
    @fish_comment.user_id = current_user.id
    @fish_comment.save
  end

  def destroy
    @fish_comment = FishComment.find(params[:fish_id])
    @fish = @fish_comment.fish
    @fish_comment.user != current_user
    @fish_comment.destroy
  end

  private

  def fish_comment_params
    params.require(:fish_comment).permit(:comment)
  end
end
